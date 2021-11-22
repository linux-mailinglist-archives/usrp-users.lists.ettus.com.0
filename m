Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C8518458A87
	for <lists+usrp-users@lfdr.de>; Mon, 22 Nov 2021 09:24:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 30363383DDA
	for <lists+usrp-users@lfdr.de>; Mon, 22 Nov 2021 03:24:30 -0500 (EST)
Received: from barracuda.navarca.com (barracuda.navarca.com [212.239.60.237])
	by mm2.emwd.com (Postfix) with ESMTPS id EBF48383BCE
	for <usrp-users@lists.ettus.com>; Mon, 22 Nov 2021 03:23:37 -0500 (EST)
X-ASG-Debug-ID: 1637569416-053bad1377498950001-5wTQH4
Received: from dns26.navarca.com (dns26.navarca.com [192.168.0.26]) by barracuda.navarca.com with ESMTP id CkN9vAkXyvW5gDTi (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO) for <usrp-users@lists.ettus.com>; Mon, 22 Nov 2021 09:23:36 +0100 (CET)
X-Barracuda-Envelope-From: emanuele.tolomei@intecs.it
X-Barracuda-RBL-Trusted-Forwarder: 192.168.0.26
Received: from dns26.navarca.com (localhost [127.0.0.1])
	by dns26.navarca.com (Postfix) with ESMTPS id 34AAD1C8F96
	for <usrp-users@lists.ettus.com>; Mon, 22 Nov 2021 09:23:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by dns26.navarca.com (Postfix) with ESMTP id 28DC0710A8
	for <usrp-users@lists.ettus.com>; Mon, 22 Nov 2021 09:23:36 +0100 (CET)
Received: from dns26.navarca.com ([127.0.0.1])
	by localhost (dns26.navarca.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id EIrk1xOXChcl for <usrp-users@lists.ettus.com>;
	Mon, 22 Nov 2021 09:23:36 +0100 (CET)
Received: from dns27.navarca.com (dns27.navarca.com [192.168.0.27])
	by dns26.navarca.com (Postfix) with ESMTP id 0C9041D64DF
	for <usrp-users@lists.ettus.com>; Mon, 22 Nov 2021 09:23:36 +0100 (CET)
Date: Mon, 22 Nov 2021 09:23:35 +0100 (CET)
X-Barracuda-RBL-Trusted-Forwarder: 192.168.0.27
From: Emanuele Tolomei <emanuele.tolomei@intecs.it>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID: <44070249.6474090.1637569415965.JavaMail.zimbra@intecs.it>
In-Reply-To: <708657326.6472726.1637569305046.JavaMail.zimbra@intecs.it>
References: <708657326.6472726.1637569305046.JavaMail.zimbra@intecs.it>
MIME-Version: 1.0
X-ASG-Orig-Subj: Re: Trouble with TwinRX frequency tuning
Content-Type: multipart/mixed;
	boundary="----=_Part_6474088_664750675.1637569415963"
X-Originating-IP: [2.228.120.196]
X-Mailer: Zimbra 8.8.15_GA_3996 (ZimbraWebClient - FF94 (Win)/8.8.15_GA_3996)
Thread-Topic: Trouble with TwinRX frequency tuning
Thread-Index: CXEcQju0E3L+E/VzZmmM+ajKXn8ZtJEFF0cY
X-Barracuda-Connect: dns26.navarca.com[192.168.0.26]
X-Barracuda-Start-Time: 1637569416
X-Barracuda-Encrypted: ECDHE-RSA-AES128-GCM-SHA256
X-Barracuda-URL: https://212.239.60.237:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at navarca.com
X-Barracuda-Scan-Msg-Size: 2302
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=8.0 tests=
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.94126
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------------------------
Message-ID-Hash: IC3BZTV6PGQZYQMZI77DCBKAIGGVWP55
X-Message-ID-Hash: IC3BZTV6PGQZYQMZI77DCBKAIGGVWP55
X-MailFrom: btv1==96003e4e4ac==emanuele.tolomei@intecs.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Trouble with TwinRX frequency tuning
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IC3BZTV6PGQZYQMZI77DCBKAIGGVWP55/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>


------=_Part_6474088_664750675.1637569415963
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Sorry, here is the attached snippet.

Emanuele Tolomei

----- Messaggio originale -----
Da: "Emanuele Tolomei" <emanuele.tolomei@intecs.it>
A: "usrp-users" <usrp-users@lists.ettus.com>
Cc: "Luigi Venuso" <luigi.venuso@intecs.it>, "gianluca.bafanelli" <gianluca=
.bafanelli@intecs.it>
Inviato: Luned=C3=AC, 22 novembre 2021 9:21:45
Oggetto: Trouble with TwinRX frequency tuning

Hello,

I have an X300 with two TwinRX daughterboards, and I'm using UHD 3.13.1. I =
need channels synchronization for DOA calculation, so the channels share th=
e same LO provided by channel 0.
The code for the LO sharing is the following:

m_MultiUsrp->set_time_unknown_pps(uhd::time_spec_t());
std::this_thread::sleep_for(std::chrono::seconds(1)); // wait for pps sync =
pulse
// Set channel specific settings
m_MultiUsrp->set_rx_lo_export_enabled(true, m_MultiUsrp->ALL_LOS, 0);
m_MultiUsrp->set_rx_lo_source("internal", m_MultiUsrp->ALL_LOS, 0);
m_MultiUsrp->set_rx_dc_offset(true, 0);
m_MultiUsrp->set_rx_lo_source("companion", m_MultiUsrp->ALL_LOS, 1);
m_MultiUsrp->set_rx_dc_offset(true, 1);
m_MultiUsrp->set_rx_lo_source("external", m_MultiUsrp->ALL_LOS, 2);
m_MultiUsrp->set_rx_dc_offset(true, 2);
m_MultiUsrp->set_rx_lo_source("external", m_MultiUsrp->ALL_LOS, 3);
m_MultiUsrp->set_rx_dc_offset(true, 3);

I am able to correctly tune the channels for the first time. However I'm ha=
ving problems with changing the center frequency at runtime. When using the=
 command set_rx_frequency() both in channel tuning and in channel synchroni=
zation, after a few loops the application crashes producing the error:

what():  EnvironmentError: IOError: Block ctrl (CE_01_Port_40) no response =
packet - AssertionError: bool(buff)
  in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double) [wit=
h uhd::endianness_t _endianness =3D (uhd::endianness_t)0u; uint64_t =3D lon=
g unsigned int]
  at /home/emanuele/uhd/host/lib/rfnoc/ctrl_iface.cpp:154

In particular, in the attached code of the ReceiveSamplesBurst function, if=
 I comment between lines tagged with "INDICTED CODE LINES", the application=
 runs without problems but the channels are not phase-synchronized.
How can I avoid this error while keeping the synchronization between all th=
e four channels?

Thank you in advance.

Emanuele Tolomei

LEGAL DISCLAIMER:=0D
The contents of this email and any transmitted files are confidential and i=
ntended solely for the use of the individual or entity to whom they are add=
ressed. We hereby exclude any warranty and any liability as to the quality =
or accuracy of the contents of this email and any attached transmitted file=
s. If you are not the intended recipient, be advised that you have received=
 this email in error and that any use, dissemination, forwarding, printing =
or copying of this email is strictly prohibited. If you have received this =
email in error please contact the sender and delete the material from any c=
omputer.=

------=_Part_6474088_664750675.1637569415963
Content-Type: text/x-c++src; name=snippet.cpp
Content-Disposition: attachment; filename=snippet.cpp
Content-Transfer-Encoding: base64

aW50IFJlY2VpdmVTYW1wbGVzQnVyc3Qoc3RkOjp2ZWN0b3I8U2FtcGxlc0Zy
YW1lVHlwZUZjMzI+ICZ2U2FtcGxlRnJhbWUsIHVoZDo6cnhfbWV0YWRhdGFf
dCAmbWQsIHNpemVfdCBuVG90YWxOdW1TYW1wcywgZG91YmxlIG5HYWluLCBk
b3VibGUgblJ4RnJlcXVlbmN5LCBkb3VibGUgblNlY29uZHNJbkZ1dHVyZSkN
CnsNCiAgaW50IG5SZWNlaXZlZFNhbXBsZXMsIG5SZXR1cm5WYWx1ZSA9IERG
UkVTX09LLCBpZHggPSAwOw0KDQogIC8vIEltcG9zdGF6aW9uZSBHYWluDQog
IG1fTXVsdGlVc3JwLT5zZXRfcnhfZ2FpbihuR2FpbiwwKTsNCg0KICAvLyBU
dW5lIHRoZSBjaGFubmVscyB0byB0aGUgZGVzaXJlZCBmcmVxdWVuY3kNCiAg
DQogIHVoZDo6dHVuZV9yZXN1bHRfdCB0dW5lX3Jlc3AgPSBtX011bHRpVXNy
cC0+c2V0X3J4X2ZyZXEoblJ4RnJlcXVlbmN5LDApOw0KICANCiAgLy9zZXQg
dGltZSBvbiB0aGUgbWFzdGVyIChtYm9hcmQgMCkNCiAgc3RydWN0IHRpbWVz
cGVjIG5vdzsNCiAgY2xvY2tfZ2V0dGltZShDTE9DS19SRUFMVElNRSwgJm5v
dyk7DQogIG1fTXVsdGlVc3JwLT5zZXRfdGltZV9ub3codWhkOjp0aW1lX3Nw
ZWNfdChub3cudHZfc2VjLCBub3cudHZfbnNlYyAvMWU2KSwgMCk7DQogIHVo
ZDo6dGltZV9zcGVjX3QgdXNycF90aW1lID0gbV9NdWx0aVVzcnAtPmdldF90
aW1lX25vdygpOw0KDQogIHVoZDo6dHVuZV9yZXF1ZXN0X3QgdHVuZV9yZXE7
DQogIHR1bmVfcmVxLnJmX2ZyZXEgPSBuUnhGcmVxdWVuY3k7DQogIHR1bmVf
cmVxLnJmX2ZyZXFfcG9saWN5ID0gdWhkOjp0dW5lX3JlcXVlc3RfdDo6UE9M
SUNZX01BTlVBTDsNCiAgdHVuZV9yZXEuZHNwX2ZyZXEgPSB0dW5lX3Jlc3Au
YWN0dWFsX2RzcF9mcmVxOw0KICB0dW5lX3JlcS5kc3BfZnJlcV9wb2xpY3kg
PSB1aGQ6OnR1bmVfcmVxdWVzdF90OjpQT0xJQ1lfTUFOVUFMOw0KICBtX011
bHRpVXNycC0+c2V0X3J4X2ZyZXEodHVuZV9yZXEsIDEpOw0KICBtX011bHRp
VXNycC0+c2V0X3J4X2ZyZXEodHVuZV9yZXEsMik7DQogIG1fTXVsdGlVc3Jw
LT5zZXRfcnhfZnJlcSh0dW5lX3JlcSwzKTsNCg0KICAvLyBTeW5jaHJvbml6
ZSB0aGUgdHVuZWQgY2hhbm5lbHMNCiAgbV9NdWx0aVVzcnAtPnNldF9jb21t
YW5kX3RpbWUodXNycF90aW1lICsgdWhkOjp0aW1lX3NwZWNfdCgwLjAxKSk7
DQoNCi8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8gIElORElDVEVEIENPREUgTElO
RVMgLy8vLy8vLy8vLy8vLy8vLy8vDQogIG1fTXVsdGlVc3JwLT5zZXRfcnhf
ZnJlcSh0dW5lX3JlcSwgMCk7DQogIG1fTXVsdGlVc3JwLT5zZXRfcnhfZnJl
cSh0dW5lX3JlcSwgMSk7DQogIG1fTXVsdGlVc3JwLT5zZXRfcnhfZnJlcSh0
dW5lX3JlcSwgMik7DQogIG1fTXVsdGlVc3JwLT5zZXRfcnhfZnJlcSh0dW5l
X3JlcSwgMyk7DQovLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vICBJTkRJQ1RFRCBD
T0RFIExJTkVTIC8vLy8vLy8vLy8vLy8vLy8vLw0KDQogIG1fTXVsdGlVc3Jw
LT5jbGVhcl9jb21tYW5kX3RpbWUoKTsNCg0KICAvLyBJbXBvc3RhemlvbmUg
ZGVsIHJpY2V2aXRvcmUgZGVsbG8gc3RyZWFtIGRpIGNhbXBpb25pDQogIHN0
ZDo6Y291dCA8PCAiQmVnaW4gc3RyZWFtaW5nICIgPDwgIG5Ub3RhbE51bVNh
bXBzIDw8ICAiIHNhbXBsZXMsIG9uICIgPDwgblJ4RnJlcXVlbmN5IC8gMWU2
IDw8ICIgTUh6LCAiIDw8IG5TZWNvbmRzSW5GdXR1cmUgPDwgIiBzZWNvbmRz
IGluIHRoZSBmdXR1cmUuLi4iIDw8IHN0ZDo6ZW5kbDsNCiAgdWhkOjpzdHJl
YW1fY21kX3Qgc3RyZWFtX2NtZCh1aGQ6OnN0cmVhbV9jbWRfdDo6U1RSRUFN
X01PREVfTlVNX1NBTVBTX0FORF9ET05FKTsNCiAgc3RyZWFtX2NtZC5udW1f
c2FtcHMgPSBuVG90YWxOdW1TYW1wczsNCiAgc3RyZWFtX2NtZC5zdHJlYW1f
bm93ID0gZmFsc2U7DQogIGlmKG5TZWNvbmRzSW5GdXR1cmUgPCAwLjEpIHsN
CiAgICBzdGQ6OmNvdXQgPDwgIlNldHRpbmcgcmVhc29uYWJsZSBkZWxheTog
IiA8PCBuU2Vjb25kc0luRnV0dXJlIDw8IHN0ZDo6ZW5kbDsNCiAgICBuU2Vj
b25kc0luRnV0dXJlID0gMC41Ow0KICB9DQogIHN0cmVhbV9jbWQudGltZV9z
cGVjID0gbV9NdWx0aVVzcnAtPmdldF90aW1lX25vdygpICsgdWhkOjp0aW1l
X3NwZWNfdChuU2Vjb25kc0luRnV0dXJlKTsNCiAgc3RkOjpjb3V0IDw8ICJU
aW1lIHRvIHN0cmVhbTogIiA8PCBzdHJlYW1fY21kLnRpbWVfc3BlYy5nZXRf
cmVhbF9zZWNzKCkvMS4wZTYgPDwgIi4uLiIgPDwgc3RkOjplbmRsOyANCiAg
bV9SeFN0cmVhbWVyRmMzMi0+aXNzdWVfc3RyZWFtX2NtZChzdHJlYW1fY21k
KTsgLy8gdGVsbHMgYWxsIGNoYW5uZWxzIHRvIHN0cmVhbQ0KICANCiAgLy8g
YWxsb2NhdGUgYnVmZmVycyB0byByZWNlaXZlIHdpdGggc2FtcGxlcyAob25l
IGJ1ZmZlciBwZXIgY2hhbm5lbCkNCiAgY29uc3Qgc2l6ZV90IHNhbXBzX3Bl
cl9idWZmID0gbV9SeFN0cmVhbWVyRmMzMi0+Z2V0X21heF9udW1fc2FtcHMo
KTsNCg0KICAvLyBjcmVhdGUgYSB2ZWN0b3Igb2YgcG9pbnRlcnMgdG8gcG9p
bnQgdG8gZWFjaCBvZiB0aGUgY2hhbm5lbCBidWZmZXJzDQogIHN0ZDo6dmVj
dG9yPHN0ZDo6Y29tcGxleDxmbG9hdD4gKj4gYnVmZl9wdHJzKHZTYW1wbGVG
cmFtZS5zaXplKCkpOw0KDQogIC8vIHRoZSBmaXJzdCBjYWxsIHRvIHJlY3Yo
KSB3aWxsIGJsb2NrIHRoaXMgbWFueSBzZWNvbmRzIGJlZm9yZSByZWNlaXZp
bmcNCiAgZG91YmxlIHRpbWVvdXQgPSBuU2Vjb25kc0luRnV0dXJlICsgMS4w
OyAgLy90aW1lb3V0IChkZWxheSBiZWZvcmUgcmVjZWl2ZSArIHBhZGRpbmcp
DQoNCiAgc2l6ZV90IG51bV9hY2Nfc2FtcHMgPSAwOyAvLyBudW1iZXIgb2Yg
YWNjdW11bGF0ZWQgc2FtcGxlcw0KICB3aGlsZShudW1fYWNjX3NhbXBzIDwg
blRvdGFsTnVtU2FtcHMpIHsNCiAgICBmb3IgKHNpemVfdCBpID0gMDsgaSA8
IHZTYW1wbGVGcmFtZS5zaXplKCk7IGkrKykgYnVmZl9wdHJzW2ldID0gJnZT
YW1wbGVGcmFtZVtpXS5mcm9udCgpK251bV9hY2Nfc2FtcHM7DQogICAgDQog
ICAgLy8gcmVjZWl2ZSBhIHNpbmdsZSBwYWNrZXQNCiAgICBzaXplX3QgbnVt
X3J4X3NhbXBzID0gbV9SeFN0cmVhbWVyRmMzMi0+cmVjdihidWZmX3B0cnMs
IHNhbXBzX3Blcl9idWZmLCBtZCwgdGltZW91dCk7DQoNCiAgICAvLyB1c2Ug
YSBzbWFsbCB0aW1lb3V0IGZvciBzdWJzZXF1ZW50IHBhY2tldHMNCiAgICB0
aW1lb3V0ID0gMC4xOw0KDQogICAgaWYobWQuZXJyb3JfY29kZSA9PSB1aGQ6
OnJ4X21ldGFkYXRhX3Q6OkVSUk9SX0NPREVfVElNRU9VVCkgew0KICAgICAg
bV9wQ0xvZ2dlci0+TG9nKCJFUlJPUkU6IFRpbWVvdXQgc3UgcmljZXppb25l
IGNhbXBpb25pIiwgX19GVU5DVElPTl9fLCBMT0dfTEVWRUxfVFJBQ0UpOw0K
ICAgICAgblJldHVyblZhbHVlID0gREZSRVNfVElNRU9VVDsNCiAgICAgIGJy
ZWFrOw0KICAgIH0NCiAgICBpZiAobWQuZXJyb3JfY29kZSAhPSB1aGQ6OnJ4
X21ldGFkYXRhX3Q6OkVSUk9SX0NPREVfTk9ORSkNCiAgICB7DQogICAgICBt
X3BDTG9nZ2VyLT5Mb2coIkVSUk9SRTogRXJyb3JlIGRpIHJpY2V6aW9uZTog
IiArIG1kLnN0cmVycm9yKCksIF9fRlVOQ1RJT05fXywgTE9HX0xFVkVMX1RS
QUNFKTsNCiAgICAgIHN3aXRjaCAobWQuZXJyb3JfY29kZSkNCiAgICAgIHsN
CiAgICAgIGNhc2UgdWhkOjpyeF9tZXRhZGF0YV90OjpFUlJPUl9DT0RFX1RJ
TUVPVVQ6DQogICAgICAgIG5SZXR1cm5WYWx1ZSA9IERGUkVTX1RJTUVPVVQ7
DQogICAgICAgIGJyZWFrOw0KICAgICAgY2FzZSB1aGQ6OnJ4X21ldGFkYXRh
X3Q6OkVSUk9SX0NPREVfTEFURV9DT01NQU5EOg0KICAgICAgICBuUmV0dXJu
VmFsdWUgPSBERlJFU19UT09fTEFURTsNCiAgICAgICAgYnJlYWs7DQogICAg
ICBjYXNlIHVoZDo6cnhfbWV0YWRhdGFfdDo6RVJST1JfQ09ERV9CUk9LRU5f
Q0hBSU46DQogICAgICBjYXNlIHVoZDo6cnhfbWV0YWRhdGFfdDo6RVJST1Jf
Q09ERV9PVkVSRkxPVzoNCiAgICAgIGNhc2UgdWhkOjpyeF9tZXRhZGF0YV90
OjpFUlJPUl9DT0RFX0FMSUdOTUVOVDoNCiAgICAgIGNhc2UgdWhkOjpyeF9t
ZXRhZGF0YV90OjpFUlJPUl9DT0RFX0JBRF9QQUNLRVQ6DQogICAgICBkZWZh
dWx0Og0KICAgICAgICBuUmV0dXJuVmFsdWUgPSBERlJFU19DQVBUVVJFX0VS
Uk9SOw0KICAgICAgfTsNCiAgICAgIGJyZWFrOw0KICAgIH0NCg0KICAgIG51
bV9hY2Nfc2FtcHMgKz0gbnVtX3J4X3NhbXBzOw0KICB9DQoNCiAgaWYgKG51
bV9hY2Nfc2FtcHMgPCBuVG90YWxOdW1TYW1wcykgDQogICAgICBzdGQ6OmNl
cnIgPDwgIlJlY2VpdmUgdGltZW91dCBiZWZvcmUgYWxsIHNhbXBsZXMgcmVj
ZWl2ZWQuLi4iIDw8IHN0ZDo6ZW5kbDsNCiAgDQogIHJldHVybiBuUmV0dXJu
VmFsdWU7DQp9DQoNCg==

------=_Part_6474088_664750675.1637569415963
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

------=_Part_6474088_664750675.1637569415963--
