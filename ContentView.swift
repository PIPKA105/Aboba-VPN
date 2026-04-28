import NetworkExtension

func setupAbobaVPN() {
    let manager = NETunnelProviderManager()
    let protocolConfiguration = NETunnelProviderProtocol()
    
    protocolConfiguration.serverAddress = "1.2.16.2" // Твой адрес
    protocolConfiguration.providerBundleIdentifier = "com.studio26.abobavpn.extension"
    
    // Принудительно ставим DNS, чтобы всё шло через наш канал
    let dnsSettings = NEDNSSettings(dnsServers: ["1.2.16.2", "8.8.8.8"])
    protocolConfiguration.dnsSettings = dnsSettings
    
    manager.protocolConfiguration = protocolConfiguration
    manager.localizedDescription = "aboba dns vpn"
    manager.isEnabled = true
    
    manager.saveToPreferences { error in
        if let err = error {
            print("Гы! Ошибка: \(err.localizedDescription)")
        } else {
            print("Победа! Абоба в деле.")
        }
    }
}
