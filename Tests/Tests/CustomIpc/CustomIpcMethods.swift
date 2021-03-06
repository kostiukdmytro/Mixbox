import MixboxInAppServices
import MixboxIpc

final class CustomIpcMethods {
    static func registerIn(_ mixboxInAppServices: MixboxInAppServices) {
        mixboxInAppServices.register(methodHandler: EchoIpcMethodHandler<String>())
        mixboxInAppServices.register(methodHandler: EchoIpcMethodHandler<Int>())
        mixboxInAppServices.register(methodHandler: EchoIpcMethodHandler<IpcVoid>())
        mixboxInAppServices.register(methodHandler: EchoIpcMethodHandler<Bool>())
        mixboxInAppServices.register(methodHandler: EchoIpcMethodHandler<[String]>())
        mixboxInAppServices.register(methodHandler: EchoIpcMethodHandler<[String: String]>())
        
        mixboxInAppServices.register(methodHandler: FakeCellsReloadIpcMethodHandler.instance)
        mixboxInAppServices.register(methodHandler: FakeCellsSubviewsInfoIpcMethodHandler.instance)
    }
}
