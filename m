Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9811F454345
	for <lists+usrp-users@lfdr.de>; Wed, 17 Nov 2021 10:04:49 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 79EE3384115
	for <lists+usrp-users@lfdr.de>; Wed, 17 Nov 2021 04:04:48 -0500 (EST)
Received: from smtpbg519.qq.com (smtpbg516.qq.com [203.205.250.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 0E0F4383FA8
	for <usrp-users@lists.ettus.com>; Wed, 17 Nov 2021 04:03:56 -0500 (EST)
X-QQ-GoodBg: 0
X-QQ-SSF: 0000000000000030
X-QQ-FEAT: pwK8JUNR4Nm/v7lAtevcW26lcUHarrzYRstzdlHY6gM/zy31bP1dU/q1GwJ1t
	e7D2slb7DYdcLHW11K/UZjWohmzGSXZo+0j4y74lMmR1G4qVnDpnpK/kwOG8PZYmlNPhhJg
	x98NROtEDk1rvimk0hOsEnW5AMoyKFeeNUTAaEseZwQCjYakccoFkxYOO55OIU9ZB7EkWWE
	ew7KnmD7/RDcC/s7VBrFHeE6Gf9O5+N1ge7gYATqYFegbMWGE9MqMZZpQrpBD12j8nzhMee
	mcX0MyK28kQgmvMSCCXaVhTL3jqIowLjTqZlIVioccig5QS3gUNPjWMzlV7WJjmMUj4S7mf
	t4C9cvdMmivKERocpdMHHxbPWYD6amBrUdL2D/e
X-QQ-BUSINESS-ORIGIN: 2
X-Originating-IP: 96.45.191.82
X-QQ-STYLE: 
X-QQ-mid: llogic32t1637139828t5379150
From: "=?utf-8?B?6ZmI54Wc?=" <yang_hu@ultrasine.cn>
To: "=?utf-8?B?dXNycC11c2Vycw==?=" <usrp-users@lists.ettus.com>
Mime-Version: 1.0
Date: Wed, 17 Nov 2021 17:03:48 +0800
X-Priority: 3
Message-ID: <tencent_35F980DE62537DB02AB8CFD6@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
X-QQ-SENDSIZE: 520
Received: from qq.com (unknown [127.0.0.1])
	by smtp.qq.com (ESMTP) with SMTP
	id ; Wed, 17 Nov 2021 17:03:49 +0800 (CST)
Feedback-ID: llogic:ultrasine.cn:qybgspam:qybgspam4
Message-ID-Hash: L3YNXVWAPQYN3WACEGH7QDGNQTDLZEHY
X-Message-ID-Hash: L3YNXVWAPQYN3WACEGH7QDGNQTDLZEHY
X-MailFrom: yang_hu@ultrasine.cn
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Why There is one phase difference in UHD 3.15.0.0, but there are four phase differences in UHD 4.1.0.1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/L3YNXVWAPQYN3WACEGH7QDGNQTDLZEHY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0302502247463075020=="

This is a multi-part message in MIME format.

--===============0302502247463075020==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_6194C574_1C035758_664DE4F7"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

------=_NextPart_6194C574_1C035758_664DE4F7
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: base64

aGVsbG8sDQoNCg0KJm5ic3A7IEkgdXNlIGZvdXIgdXNycC0yOTQ1IGFzIHN5bmNocm9ub3Vz
IGFjcXVpc2l0aW9uIHN5c3RlbSwgQ0RBLTI5OTAgcHJvdmlkZXMgaW50ZXJuYWwgcmVmZXJl
bmNlIGNsb2NrIGFuZCBQUFMgdG8gZm91ciB1c3JwLTI5NDUsIGFuZCBweGllLTU2NTEgYW5k
IHB4aWUtNTY1MiBhcmUgdXNlZCB0byBwcm92aWRlIHR3by1zdGFnZSBsb2NhbCBvc2NpbGxh
dG9yIGZvciBmb3VyIFVTUlBzLiBOb3cgSSB1c2UgdHdvIHVzcnAtMjk0NSB0byBjb2xsZWN0
IHRoZSBkYXRhIG9mIHR3byBjaGFubmVscyAob25lIGNoYW5uZWwgZm9yIGVhY2gpIGFuZCBj
YWxjdWxhdGUgdGhlIHBoYXNlIGRpZmZlcmVuY2UgYmV0d2VlbiB0aGUgdHdvIGNoYW5uZWxz
LiBJZiBJIHVzZSBVSEQgNC4xLjAuMSwgYWZ0ZXIgbXVsdGlwbGUgYWNxdWlzaXRpb24sIEkg
ZmluZCB0aGF0IHRoZXJlIGFyZSBmb3VyIGtpbmRzIG9mIHBoYXNlIGRpZmZlcmVuY2VzLCBh
bmQgdGhlIHBoYXNlIGRpZmZlcmVuY2VzIGFyZSByb3VnaGx5IDkwIGRlZ3JlZXMsIDE4MCBk
ZWdyZWVzIGFuZCAyNzAgZGVncmVlcy4gRm9yIGV4YW1wbGUsIHRoZSBmb3VyIHBoYXNlIGRp
ZmZlcmVuY2VzIGFyZSA0LjUgZGVncmVlcywgOTUuNTMgZGVncmVlcywgMTg5LjUxIGRlZ3Jl
ZXMgYW5kIDI3NS40OSBkZWdyZWVzIHJlc3BlY3RpdmVseS4gSWYgSSB1c2UgVUhEIDMuMTUu
MC4wLCB0aGVyZSBpcyBvbmx5IG9uZSBwaGFzZSBkaWZmZXJlbmNlLg0KDQoNCg0KU2V0dXAg
RGV0YWlscw0KMS5DREEtMjk5MCBwcm92aWRlcyBpbnRlcm5hbCByZWZlcmVuY2UgY2xvY2sg
YW5kIFBQUyB0byBmb3VyIHVzcnBzLg0KMi5QeGllLTU2NTEgYW5kIFB4aWUtNTY1MiBhcmUg
dXNlZCB0byBwcm92aWRlIHR3by1zdGFnZSBsb2NhbCBvc2NpbGxhdG9yIGZvciBmb3VyIFVT
UlBzLg0KDQoNCkV4cGVjdGVkIEJlaGF2aW9yDQpVc2luZyBVSEQgNC4xLjAuMSwgdGhlcmUg
aXMgb25seSBvbmUgcGhhc2UgZGlmZmVyZW5jZS4NCg0KDQpBY3R1YWwgQmVoYXZpb3VyDQpU
aGVyZSBhcmUgZm91ciBwaGFzZSBkaWZmZXJlbmNlcyB1c2luZyBVSEQgNC4xLjAuMS4NCg0K
DQpTdGVwcyB0byByZXByb2R1Y2UgdGhlIHByb2JsZW0NCkFmdGVyIHN5bmNocm9uaXppbmcg
dGhlIHJlZmVyZW5jZSBjbG9jaywgUFBTIGFuZCBsbywgdXNlIFVIRCA0LjEuMC4xIHRvIGNv
bGxlY3Qgb25lIGNoYW5uZWwgb2YgZGlmZmVyZW50IFVTUlAgYW5kIGNhbGN1bGF0ZSB0aGUg
cGhhc2UgZGlmZmVyZW5jZS4NCg0KDQoNCmNhbiBhbnlib2R5IGhlbHAgbWU/

------=_NextPart_6194C574_1C035758_664DE4F7
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: base64

aGVsbG8sPGRpdj48aW5jbHVkZXRhaWw+PCEtLTwhW2VuZGlmXS0tPjwvaW5jbHVkZXRhaWw+
PC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj48ZGl2PiZuYnNwOyBJIHVzZSBmb3VyIHVzcnAt
Mjk0NSBhcyBzeW5jaHJvbm91cyBhY3F1aXNpdGlvbiBzeXN0ZW0sIENEQS0yOTkwIHByb3Zp
ZGVzIGludGVybmFsIHJlZmVyZW5jZSBjbG9jayBhbmQgUFBTIHRvIGZvdXIgdXNycC0yOTQ1
LCBhbmQgcHhpZS01NjUxIGFuZCBweGllLTU2NTIgYXJlIHVzZWQgdG8gcHJvdmlkZSB0d28t
c3RhZ2UgbG9jYWwgb3NjaWxsYXRvciBmb3IgZm91ciBVU1JQcy4gTm93IEkgdXNlIHR3byB1
c3JwLTI5NDUgdG8gY29sbGVjdCB0aGUgZGF0YSBvZiB0d28gY2hhbm5lbHMgKG9uZSBjaGFu
bmVsIGZvciBlYWNoKSBhbmQgY2FsY3VsYXRlIHRoZSBwaGFzZSBkaWZmZXJlbmNlIGJldHdl
ZW4gdGhlIHR3byBjaGFubmVscy4gSWYgSSB1c2UgVUhEIDQuMS4wLjEsIGFmdGVyIG11bHRp
cGxlIGFjcXVpc2l0aW9uLCBJIGZpbmQgdGhhdCB0aGVyZSBhcmUgZm91ciBraW5kcyBvZiBw
aGFzZSBkaWZmZXJlbmNlcywgYW5kIHRoZSBwaGFzZSBkaWZmZXJlbmNlcyBhcmUgcm91Z2hs
eSA5MCBkZWdyZWVzLCAxODAgZGVncmVlcyBhbmQgMjcwIGRlZ3JlZXMuIEZvciBleGFtcGxl
LCB0aGUgZm91ciBwaGFzZSBkaWZmZXJlbmNlcyBhcmUgNC41IGRlZ3JlZXMsIDk1LjUzIGRl
Z3JlZXMsIDE4OS41MSBkZWdyZWVzIGFuZCAyNzUuNDkgZGVncmVlcyByZXNwZWN0aXZlbHku
IElmIEkgdXNlIFVIRCAzLjE1LjAuMCwgdGhlcmUgaXMgb25seSBvbmUgcGhhc2UgZGlmZmVy
ZW5jZS48L2Rpdj48L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PjxkaXY+U2V0dXAgRGV0YWls
czwvZGl2PjxkaXY+MS5DREEtMjk5MCBwcm92aWRlcyBpbnRlcm5hbCByZWZlcmVuY2UgY2xv
Y2sgYW5kIFBQUyB0byBmb3VyIHVzcnBzLjwvZGl2PjxkaXY+Mi5QeGllLTU2NTEgYW5kIFB4
aWUtNTY1MiBhcmUgdXNlZCB0byBwcm92aWRlIHR3by1zdGFnZSBsb2NhbCBvc2NpbGxhdG9y
IGZvciBmb3VyIFVTUlBzLjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+RXhwZWN0ZWQgQmVo
YXZpb3I8L2Rpdj48ZGl2PlVzaW5nIFVIRCA0LjEuMC4xLCB0aGVyZSBpcyBvbmx5IG9uZSBw
aGFzZSBkaWZmZXJlbmNlLjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+QWN0dWFsIEJlaGF2
aW91cjwvZGl2PjxkaXY+VGhlcmUgYXJlIGZvdXIgcGhhc2UgZGlmZmVyZW5jZXMgdXNpbmcg
VUhEIDQuMS4wLjEuPC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5TdGVwcyB0byByZXByb2R1
Y2UgdGhlIHByb2JsZW08L2Rpdj48ZGl2PkFmdGVyIHN5bmNocm9uaXppbmcgdGhlIHJlZmVy
ZW5jZSBjbG9jaywgUFBTIGFuZCBsbywgdXNlIFVIRCA0LjEuMC4xIHRvIGNvbGxlY3Qgb25l
IGNoYW5uZWwgb2YgZGlmZmVyZW50IFVTUlAgYW5kIGNhbGN1bGF0ZSB0aGUgcGhhc2UgZGlm
ZmVyZW5jZS48L2Rpdj48L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PmNhbiBhbnlib2R5IGhl
bHAgbWU/PC9kaXY+

------=_NextPart_6194C574_1C035758_664DE4F7--

--===============0302502247463075020==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0302502247463075020==--
