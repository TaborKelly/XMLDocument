# XMLDocument
## What is this?

This tries to be a concise example of how the [XMLDocument](https://developer.apple.com/documentation/foundation/xmldocument) constructor crashes when it is passed an empty string on Linux.

## swift test
```
$ swift test
Compile Swift Module 'XMLDocumentTests' (2 sources)
Compile Swift Module 'XMLDocumentPackageTests' (1 sources)
Linking ./.build/x86_64-unknown-linux/debug/XMLDocumentPackageTests.xctest
Test Suite 'All tests' started at 2018-12-05 23:52:32.011
Test Suite 'debug.xctest' started at 2018-12-05 23:52:32.012
Test Suite 'XMLDocumentTests' started at 2018-12-05 23:52:32.012
Test Case 'XMLDocumentTests.testEmptyString' started at 2018-12-05 23:52:32.012
Got backtrace:
	/work/XMLDocument/.build/x86_64-unknown-linux/debug/XMLDocumentPackageTests.xctest(+0x32ea) [0x5617b12952ea]
	/work/XMLDocument/.build/x86_64-unknown-linux/debug/XMLDocumentPackageTests.xctest(+0x3b78) [0x5617b1295b78]
	/work/XMLDocument/.build/x86_64-unknown-linux/debug/XMLDocumentPackageTests.xctest(+0x41e0) [0x5617b12961e0]
	/work/XMLDocument/.build/x86_64-unknown-linux/debug/XMLDocumentPackageTests.xctest(+0x41f9) [0x5617b12961f9]
	/lib/x86_64-linux-gnu/libc.so.6(+0x3ef20) [0x7fbf9e6fff20]
	/opt/swift-4.2-RELEASE-ubuntu18.04/usr/lib/swift/linux/libFoundation.so(_CFXMLNodeGetPrivateData+0) [0x7fbf9f663b60]
	/opt/swift-4.2-RELEASE-ubuntu18.04/usr/lib/swift/linux/libFoundation.so($S10Foundation7XMLNodeC3ptrACSv_tcfc+0x5e) [0x7fbf9fa1307e]
	/opt/swift-4.2-RELEASE-ubuntu18.04/usr/lib/swift/linux/libFoundation.so(+0x615317) [0x7fbf9fa06317]
	/opt/swift-4.2-RELEASE-ubuntu18.04/usr/lib/swift/linux/libFoundation.so(+0x6154e6) [0x7fbf9fa064e6]
	/opt/swift-4.2-RELEASE-ubuntu18.04/usr/lib/swift/linux/libFoundation.so($S10Foundation11XMLDocumentC9xmlString7optionsACSS_AA7XMLNodeC7OptionsVtKcfC+0x42) [0x7fbf9fa03512]
	/work/XMLDocument/.build/x86_64-unknown-linux/debug/XMLDocumentPackageTests.xctest(+0x30e3) [0x5617b12950e3]
	/work/XMLDocument/.build/x86_64-unknown-linux/debug/XMLDocumentPackageTests.xctest(+0x52f0) [0x5617b12972f0]
	/work/XMLDocument/.build/x86_64-unknown-linux/debug/XMLDocumentPackageTests.xctest(+0x537a) [0x5617b129737a]
	/work/XMLDocument/.build/x86_64-unknown-linux/debug/XMLDocumentPackageTests.xctest(+0x540b) [0x5617b129740b]
	/opt/swift-4.2-RELEASE-ubuntu18.04/usr/lib/swift/linux/libXCTest.so(+0x130c1) [0x7fbfa08d40c1]
	/opt/swift-4.2-RELEASE-ubuntu18.04/usr/lib/swift/linux/libXCTest.so($S6XCTest20XCTAssertThrowsError__4file4line_yxyKXK_SSs12StaticStringVSuys0D0_pXEtlF+0x60) [0x7fbfa08d3df0]
	/work/XMLDocument/.build/x86_64-unknown-linux/debug/XMLDocumentPackageTests.xctest(+0x5276) [0x5617b1297276]
	/work/XMLDocument/.build/x86_64-unknown-linux/debug/XMLDocumentPackageTests.xctest(+0x5ba9) [0x5617b1297ba9]
	/work/XMLDocument/.build/x86_64-unknown-linux/debug/XMLDocumentPackageTests.xctest(+0x563c) [0x5617b129763c]
	/work/XMLDocument/.build/x86_64-unknown-linux/debug/XMLDocumentPackageTests.xctest(+0x5b91) [0x5617b1297b91]
	/opt/swift-4.2-RELEASE-ubuntu18.04/usr/lib/swift/linux/libXCTest.so(+0x29dc1) [0x7fbfa08eadc1]
	/opt/swift-4.2-RELEASE-ubuntu18.04/usr/lib/swift/linux/libXCTest.so(+0x29e1c) [0x7fbfa08eae1c]
	/opt/swift-4.2-RELEASE-ubuntu18.04/usr/lib/swift/linux/libXCTest.so(+0x29da4) [0x7fbfa08eada4]
	/opt/swift-4.2-RELEASE-ubuntu18.04/usr/lib/swift/linux/libXCTest.so(+0x2a307) [0x7fbfa08eb307]
	/opt/swift-4.2-RELEASE-ubuntu18.04/usr/lib/swift/linux/libXCTest.so($S6XCTest0A4CaseC10invokeTestyyF+0x48) [0x7fbfa08d7bb8]
	/opt/swift-4.2-RELEASE-ubuntu18.04/usr/lib/swift/linux/libXCTest.so($S6XCTest0A4CaseC7performyyAA0A3RunCF+0x13a) [0x7fbfa08d783a]
	/opt/swift-4.2-RELEASE-ubuntu18.04/usr/lib/swift/linux/libXCTest.so($S6XCTestAAC3runyyF+0x280) [0x7fbfa08d0cd0]
	/opt/swift-4.2-RELEASE-ubuntu18.04/usr/lib/swift/linux/libXCTest.so($S6XCTest0A5SuiteC7performyyAA0A3RunCF+0x28e) [0x7fbfa08d008e]
	/opt/swift-4.2-RELEASE-ubuntu18.04/usr/lib/swift/linux/libXCTest.so($S6XCTest0A5SuiteC7performyyAA0A3RunCF+0x7b0) [0x7fbfa08d05b0]
	/opt/swift-4.2-RELEASE-ubuntu18.04/usr/lib/swift/linux/libXCTest.so($S6XCTest0A5SuiteC7performyyAA0A3RunCF+0x5b6) [0x7fbfa08d03b6]
	/opt/swift-4.2-RELEASE-ubuntu18.04/usr/lib/swift/linux/libXCTest.so($S6XCTest7XCTMainys5NeverOSayAA0A4CaseCm04testD5Class_SaySS_yAFKctG8allTeststGF+0xf78) [0x7fbfa08d6bb8]
	/work/XMLDocument/.build/x86_64-unknown-linux/debug/XMLDocumentPackageTests.xctest(+0x481e) [0x5617b129681e]
	/lib/x86_64-linux-gnu/libc.so.6(__libc_start_main+0xe7) [0x7fbf9e6e2b97]
	/work/XMLDocument/.build/x86_64-unknown-linux/debug/XMLDocumentPackageTests.xctest(+0x2e5a) [0x5617b1294e5a]
```

## Running under lldb
```
$ lldb ./.build/x86_64-unknown-linux/debug/XMLDocument
(lldb) target create "./.build/x86_64-unknown-linux/debug/XMLDocument"
Current executable set to './.build/x86_64-unknown-linux/debug/XMLDocument' (x86_64).
(lldb) run
Process 766 launched: './.build/x86_64-unknown-linux/debug/XMLDocument' (x86_64)
Process 766 stopped
* thread #1, name = 'XMLDocument', stop reason = signal SIGSEGV: invalid address (fault address: 0x0)
    frame #0: 0x00007ffff7285b60 libFoundation.so`_CFXMLNodeGetPrivateData
libFoundation.so`_CFXMLNodeGetPrivateData:
->  0x7ffff7285b60 <+0>: movq   (%rdi), %rax
    0x7ffff7285b63 <+3>: retq   
    0x7ffff7285b64:      nopw   %cs:(%rax,%rax)
libFoundation.so`_CFXMLNodeProperties:
    0x7ffff7285b70 <+0>: movq   0x58(%rdi), %rax
Target 0: (XMLDocument) stopped.
(lldb) bt
* thread #1, name = 'XMLDocument', stop reason = signal SIGSEGV: invalid address (fault address: 0x0)
  * frame #0: 0x00007ffff7285b60 libFoundation.so`_CFXMLNodeGetPrivateData
    frame #1: 0x00007ffff763507e libFoundation.so`Foundation.XMLNode.init(ptr: Swift.UnsafeMutableRawPointer) -> Foundation.XMLNode + 94
    frame #2: 0x00007ffff7628317 libFoundation.so`function signature specialization <Arg[0] = Exploded> of Foundation.XMLDocument.init(data: Foundation.Data, options: Foundation.XMLNode.Options) throws -> Foundation.XMLDocument + 103
    frame #3: 0x00007ffff76284e6 libFoundation.so`function signature specialization <Arg[0] = Exploded> of Foundation.XMLDocument.init(xmlString: Swift.String, options: Foundation.XMLNode.Options) throws -> Foundation.XMLDocument + 166
    frame #4: 0x00007ffff7625512 libFoundation.so`Foundation.XMLDocument.__allocating_init(xmlString: Swift.String, options: Foundation.XMLNode.Options) throws -> Foundation.XMLDocument + 66
    frame #5: 0x00005555555566b3 XMLDocument`parseData(fromString="") at XMLDocument.swift:9
    frame #6: 0x0000555555555f51 XMLDocument`main at main.swift:8
    frame #7: 0x00007ffff5cdeb97 libc.so.6`__libc_start_main(main=(XMLDocument`main at main.swift), argc=1, argv=0x00007fffffffdf88, init=<unavailable>, fini=<unavailable>, rtld_fini=<unavailable>, stack_end=0x00007fffffffdf78) at libc-start.c:310
    frame #8: 0x0000555555555caa XMLDocument`_start + 42
```

## My system
I'm running Swift 4.2 on Ubuntu 18.04
```
$ uname -a
Linux tabor-xps13 4.15.0-39-generic #42-Ubuntu SMP Tue Oct 23 15:48:01 UTC 2018 x86_64 x86_64 x86_64 GNU/Linux
$ swift --version
Swift version 4.2 (swift-4.2-RELEASE)
Target: x86_64-unknown-linux-gnu
```
