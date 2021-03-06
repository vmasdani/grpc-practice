// Code generated by protoc-gen-go-grpc. DO NOT EDIT.

package model

import (
	context "context"
	grpc "google.golang.org/grpc"
	codes "google.golang.org/grpc/codes"
	status "google.golang.org/grpc/status"
)

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
// Requires gRPC-Go v1.32.0 or later.
const _ = grpc.SupportPackageIsVersion7

// PeopleServiceClient is the client API for PeopleService service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream.
type PeopleServiceClient interface {
	Get(ctx context.Context, in *Empty, opts ...grpc.CallOption) (PeopleService_GetClient, error)
}

type peopleServiceClient struct {
	cc grpc.ClientConnInterface
}

func NewPeopleServiceClient(cc grpc.ClientConnInterface) PeopleServiceClient {
	return &peopleServiceClient{cc}
}

func (c *peopleServiceClient) Get(ctx context.Context, in *Empty, opts ...grpc.CallOption) (PeopleService_GetClient, error) {
	stream, err := c.cc.NewStream(ctx, &PeopleService_ServiceDesc.Streams[0], "/PeopleService/get", opts...)
	if err != nil {
		return nil, err
	}
	x := &peopleServiceGetClient{stream}
	if err := x.ClientStream.SendMsg(in); err != nil {
		return nil, err
	}
	if err := x.ClientStream.CloseSend(); err != nil {
		return nil, err
	}
	return x, nil
}

type PeopleService_GetClient interface {
	Recv() (*Person, error)
	grpc.ClientStream
}

type peopleServiceGetClient struct {
	grpc.ClientStream
}

func (x *peopleServiceGetClient) Recv() (*Person, error) {
	m := new(Person)
	if err := x.ClientStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

// PeopleServiceServer is the server API for PeopleService service.
// All implementations must embed UnimplementedPeopleServiceServer
// for forward compatibility
type PeopleServiceServer interface {
	Get(*Empty, PeopleService_GetServer) error
	mustEmbedUnimplementedPeopleServiceServer()
}

// UnimplementedPeopleServiceServer must be embedded to have forward compatible implementations.
type UnimplementedPeopleServiceServer struct {
}

func (UnimplementedPeopleServiceServer) Get(*Empty, PeopleService_GetServer) error {
	return status.Errorf(codes.Unimplemented, "method Get not implemented")
}
func (UnimplementedPeopleServiceServer) mustEmbedUnimplementedPeopleServiceServer() {}

// UnsafePeopleServiceServer may be embedded to opt out of forward compatibility for this service.
// Use of this interface is not recommended, as added methods to PeopleServiceServer will
// result in compilation errors.
type UnsafePeopleServiceServer interface {
	mustEmbedUnimplementedPeopleServiceServer()
}

func RegisterPeopleServiceServer(s grpc.ServiceRegistrar, srv PeopleServiceServer) {
	s.RegisterService(&PeopleService_ServiceDesc, srv)
}

func _PeopleService_Get_Handler(srv interface{}, stream grpc.ServerStream) error {
	m := new(Empty)
	if err := stream.RecvMsg(m); err != nil {
		return err
	}
	return srv.(PeopleServiceServer).Get(m, &peopleServiceGetServer{stream})
}

type PeopleService_GetServer interface {
	Send(*Person) error
	grpc.ServerStream
}

type peopleServiceGetServer struct {
	grpc.ServerStream
}

func (x *peopleServiceGetServer) Send(m *Person) error {
	return x.ServerStream.SendMsg(m)
}

// PeopleService_ServiceDesc is the grpc.ServiceDesc for PeopleService service.
// It's only intended for direct use with grpc.RegisterService,
// and not to be introspected or modified (even as a copy)
var PeopleService_ServiceDesc = grpc.ServiceDesc{
	ServiceName: "PeopleService",
	HandlerType: (*PeopleServiceServer)(nil),
	Methods:     []grpc.MethodDesc{},
	Streams: []grpc.StreamDesc{
		{
			StreamName:    "get",
			Handler:       _PeopleService_Get_Handler,
			ServerStreams: true,
		},
	},
	Metadata: "protos/model.proto",
}
