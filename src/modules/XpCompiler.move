address 0x2 {
	module XpCompiler {
		use 0x1::Debug;

		struct XpCall {
			lang: vector<u8>,
		}

		public fun new_call(lang: vector<u8>): XpCall {
			XpCall { lang }
		}

		public fun create_account(_calli: &XpCall, address: vector<u8>): vector<u8> {
			Debug::print(&b"create_account");
			address
		}

		public fun transfer_amount(_calli: &XpCall, receiver: vector<u8>, amount: vector<u8>): (vector<u8>, vector<u8>) {
			Debug::print(&b"transfer_amount");
			(receiver, amount)
		}

		public fun burn(calli: XpCall): vector<u8> {
			let XpCall { lang: lang } = calli;
			lang
		}
	}
}
