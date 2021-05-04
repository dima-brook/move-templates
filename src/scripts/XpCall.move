script {
	use 0x2::XpCompiler;

	fun main() {
		let call = XpCompiler::new_call(b"solidity");
		XpCompiler::transfer_amount(&call, b"106Ca83003090c63B03d3fE3A9EE3B5E36C155CD", b"32");
		XpCompiler::burn(call);
	}
}
