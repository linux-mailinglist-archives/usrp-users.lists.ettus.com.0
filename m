Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A9B58179E2
	for <lists+usrp-users@lfdr.de>; Mon, 18 Dec 2023 19:43:44 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9776338574B
	for <lists+usrp-users@lfdr.de>; Mon, 18 Dec 2023 13:43:43 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702925023; bh=UHoyTNnvWiv0h/F+xPTnjSeb61BdYeFeRCTWPwek2mc=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=jkDF/d+NmkJjRasL61z93E3IHAgM2SSngBmr9K+lFjz7J1OHD+c1PZJbUg+1DWrzj
	 rxMa3uE/GWSao+eusgsoAOFxmPpXC9R92PuYUZT21wQliDiBZKeO7vFw+F8XCSZrD8
	 weIfy60BhjgcDW5VYZOhylcqD/+dU3+pgdH4Dwfz4iuLBmivAYz5noAeHp4SWocVAu
	 VgFg7tWCSFGREdaM5ju2wVLYTt3SQf4C52Q582N4X40lxP5S6PUoXyHcLGTpp88ZWk
	 2mDB/w7oqjXI5fhnBDPBtVYihvwn8lh9Yq8cZfrRv60R/44oi7debdrNlaCJEajB26
	 EhXeea8Ba36Dw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 451A33852ED
	for <usrp-users@lists.ettus.com>; Mon, 18 Dec 2023 13:43:03 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702924983; bh=Bziqnj5DnpG9yXOQZN8LC3yzOwfSCQQ4iXOJ2aFS/wM=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=B8/GVMFMd8ITzJzjSBfxx1vx1n4asIkw3k13WlRVHrha1aUTbebOnnZmY0y/B+cqx
	 0zPw7CNKTnGrkThs91opVTtwsPBPV4iir+2bhFUR93o4EyAb6rHAtVzoAgzFcaKBDI
	 /WyC17IZARldF1+7jEXOcQspjM5Ow09tD4v6Zfc7ykmwEKFWoDJeST1EpSANLANAIT
	 xnbqeK2eY4Y+FRJulnXtwE29sWm/dqMhtIrzMzaiaCweAmdlOOMdJ4K7jRILcHoKyJ
	 elDlAJa05bt6ALdYMZmLOvEYO/sXGRxkKXfMtt+rcHYTy9ct4hKN/6erB787qL4ug1
	 LgjnW0Ge4fpSw==
Date: Mon, 18 Dec 2023 18:43:03 +0000
To: usrp-users@lists.ettus.com
From: engr.muhd.hassan@gmail.com
Message-ID: <g1X1Ja48omFITs1w8faS1qog6VBnDS86rKh8naY2rs@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTSSewe-dLiReGwLpRWwttj4kE8B9tFdy+RoeJGTqejM=A@mail.gmail.com
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="b1_g1X1Ja48omFITs1w8faS1qog6VBnDS86rKh8naY2rs"
Content-Transfer-Encoding: 7bit
Message-ID-Hash: HE7LCWNKYZAJ2AWG44UDXRXDY7WF6DJH
X-Message-ID-Hash: HE7LCWNKYZAJ2AWG44UDXRXDY7WF6DJH
X-MailFrom: engr.muhd.hassan@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error: RuntimeError: Failure to create rfnoc_graph.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HE7LCWNKYZAJ2AWG44UDXRXDY7WF6DJH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

This is a multi-part message in MIME format.

--b1_g1X1Ja48omFITs1w8faS1qog6VBnDS86rKh8naY2rs
Content-Type: multipart/alternative;
 boundary="b2_g1X1Ja48omFITs1w8faS1qog6VBnDS86rKh8naY2rs"

--b2_g1X1Ja48omFITs1w8faS1qog6VBnDS86rKh8naY2rs
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Dear Rob,

Sorry for the wrong command. I executed following command =E2=80=9Cuhd_im=
age_loader --args type=3De3xx,adr=3D192.168.10.2 --fpga-path=3D/home/grcu=
srp/uhd/fpga/usrp3/top/e31x/build/usrp_e310_sg3_fpga.bit=E2=80=9D.

Please also find the attached YML file.

--b2_g1X1Ja48omFITs1w8faS1qog6VBnDS86rKh8naY2rs
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Dear Rob,</p><p>Sorry for the wrong command. I executed following comm=
and =E2=80=9Cuhd_image_loader --args type=3De3xx,adr=3D192.168.10.2 --fpg=
a-path=3D/home/grcusrp/uhd/fpga/usrp3/top/e31x/build/usrp_e310_sg3_fpga.b=
it=E2=80=9D.</p><p><br></p><p>Please also find the attached YML file. </p=
><p><br></p>


--b2_g1X1Ja48omFITs1w8faS1qog6VBnDS86rKh8naY2rs--

--b1_g1X1Ja48omFITs1w8faS1qog6VBnDS86rKh8naY2rs
Content-Type: text/plain; name=e310_rfnoc_image_core.yml
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename=e310_rfnoc_image_core.yml

IyBHZW5lcmFsIHBhcmFtZXRlcnMKIyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLQpzY2hlbWE6IHJmbm9jX2ltYWdlYnVpbGRlcl9hcmdzICAgICAgICAgIyBJZGVudGlm
aWVyIGZvciB0aGUgc2NoZW1hIHVzZWQgdG8gdmFsaWRhdGUgdGhpcyBmaWxlCmNvcHlyaWdodDog
Pi0gICAgICAgICAgICAgICAgICAgICAgICAgICAjIENvcHlyaWdodCBpbmZvcm1hdGlvbiB1c2Vk
IGluIGZpbGUgaGVhZGVycwogIENvcHlyaWdodCAyMDIzIEV0dHVzIFJlc2VhcmNoLCBhIE5hdGlv
bmFsIEluc3RydW1lbnRzIEJyYW5kCmxpY2Vuc2U6ID4tICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAjIExpY2Vuc2UgaW5mb3JtYXRpb24gdXNlZCBpbiBmaWxlIGhlYWRlcnMKICBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjogTEdQTC0zLjAtb3ItbGF0ZXIKdmVyc2lvbjogJzEuMCcgICAgICAg
ICAgICAgICAgICAgICAgICAgICMgRmlsZSB2ZXJzaW9uCmNoZHJfd2lkdGg6IDY0ICAgICAgICAg
ICAgICAgICAgICAgICAgICAjIEJpdCB3aWR0aCBvZiB0aGUgQ0hEUiBidXMgZm9yIHRoaXMgaW1h
Z2UKZGV2aWNlOiAnZTMxMCcgICAgICAgICAgICAgICAgICAgICAgICAgICMgVVNSUCB0eXBlCmlt
YWdlX2NvcmVfbmFtZTogJ2UzMTAnICAgICAgICAgICAgICAgICAjIE5hbWUgdG8gdXNlIGZvciB0
aGUgUkZOb0MgSW1hZ2UgQ29yZSBmaWxlcwpkZWZhdWx0X3RhcmdldDogJ0RSQU09MSBFMzEwX1NH
MycKCiMgQSBsaXN0IG9mIGFsbCBzdHJlYW0gZW5kcG9pbnRzIGluIGRlc2lnbgojIC0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0Kc3RyZWFtX2VuZHBvaW50czoKICBlcDA6
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICMgU3RyZWFtIGVuZHBvaW50IG5hbWUK
ICAgIGN0cmw6IFRydWUgICAgICAgICAgICAgICAgICAgICAgICAgICMgRW5kcG9pbnQgcGFzc2Vz
IGNvbnRyb2wgdHJhZmZpYwogICAgZGF0YTogVHJ1ZSAgICAgICAgICAgICAgICAgICAgICAgICAg
IyBFbmRwb2ludCBwYXNzZXMgZGF0YSB0cmFmZmljCiAgICBidWZmX3NpemU6IDQwOTYgICAgICAg
ICAgICAgICAgICAgICAjIEluZ3Jlc3MgYnVmZmVyIHNpemUgZm9yIGRhdGEKICBlcDE6CiAgICBj
dHJsOiBGYWxzZQogICAgZGF0YTogVHJ1ZQogICAgYnVmZl9zaXplOiA0MDk2CiAgZXAyOgogICAg
Y3RybDogRmFsc2UKICAgIGRhdGE6IFRydWUKICAgIGJ1ZmZfc2l6ZTogNDA5NgogIGVwMzoKICAg
IGN0cmw6IEZhbHNlCiAgICBkYXRhOiBUcnVlCiAgICBidWZmX3NpemU6IDQwOTYKCiMgQSBsaXN0
IG9mIGFsbCBOb0MgYmxvY2tzIGluIGRlc2lnbgojIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0Kbm9jX2Jsb2NrczoKICByYWRpbzA6ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICMgTm9DIGJsb2NrIG5hbWUKICAgIGJsb2NrX2Rlc2M6ICdyYWRpby55bWwnICAgICAgICAg
ICAgICMgQmxvY2sgZGV2aWNlIGRlc2NyaXB0b3IKICAgIHBhcmFtZXRlcnM6CiAgICAgIE5VTV9Q
T1JUUzogMgogIHJlcGxheTA6CiAgICBibG9ja19kZXNjOiAncmVwbGF5LnltbCcKICAgIHBhcmFt
ZXRlcnM6CiAgICAgIE5VTV9QT1JUUzogMgogICAgICBNRU1fREFUQV9XOiA2NAogICAgICBNRU1f
QUREUl9XOiAzMAoKIyBBIGxpc3Qgb2YgYWxsIHN0YXRpYyBjb25uZWN0aW9ucyBpbiBkZXNpZ24K
IyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIyBGb3JtYXQ6IEEg
bGlzdCBvZiBjb25uZWN0aW9uIG1hcHMgKGxpc3Qgb2Yga2V5LXZhbHVlIHBhaXJzKSB3aXRoIHRo
ZSBmb2xsb3dpbmcga2V5cwojICAgLSBzcmNibGsgID0gU291cmNlIGJsb2NrIHRvIGNvbm5lY3QK
IyAgIC0gc3JjcG9ydCA9IFBvcnQgb24gdGhlIHNvdXJjZSBibG9jayB0byBjb25uZWN0CiMgICAt
IGRzdGJsayAgPSBEZXN0aW5hdGlvbiBibG9jayB0byBjb25uZWN0CiMgICAtIGRzdHBvcnQgPSBQ
b3J0IG9uIHRoZSBkZXN0aW5hdGlvbiBibG9jayB0byBjb25uZWN0CmNvbm5lY3Rpb25zOgogICMg
VFggQQogIC0geyBzcmNibGs6IGVwMCwgICAgc3JjcG9ydDogb3V0MCwgIGRzdGJsazogcmFkaW8w
LCBkc3Rwb3J0OiBpbl8wIH0KICAjIFJYIEEKICAtIHsgc3JjYmxrOiByYWRpbzAsIHNyY3BvcnQ6
IG91dF8wLCBkc3RibGs6IGVwMCwgICAgZHN0cG9ydDogaW4wICB9CiAgIyBUWCBCCiAgLSB7IHNy
Y2JsazogZXAxLCAgICBzcmNwb3J0OiBvdXQwLCAgZHN0YmxrOiByYWRpbzAsIGRzdHBvcnQ6IGlu
XzEgfQogICMgUlggQgogIC0geyBzcmNibGs6IHJhZGlvMCwgc3JjcG9ydDogb3V0XzEsIGRzdGJs
azogZXAxLCAgICBkc3Rwb3J0OiBpbjAgIH0KICAjCiAgIyBSZXBsYXkgQ29ubmVjdGlvbnMKICAt
IHsgc3JjYmxrOiBlcDIsICAgICBzcmNwb3J0OiBvdXQwLCAgZHN0YmxrOiByZXBsYXkwLCBkc3Rw
b3J0OiBpbl8wIH0KICAtIHsgc3JjYmxrOiByZXBsYXkwLCBzcmNwb3J0OiBvdXRfMCwgZHN0Ymxr
OiBlcDIsICAgICBkc3Rwb3J0OiBpbjAgIH0KICAtIHsgc3JjYmxrOiBlcDMsICAgICBzcmNwb3J0
OiBvdXQwLCAgZHN0YmxrOiByZXBsYXkwLCBkc3Rwb3J0OiBpbl8xIH0KICAtIHsgc3JjYmxrOiBy
ZXBsYXkwLCBzcmNwb3J0OiBvdXRfMSwgZHN0YmxrOiBlcDMsICAgICBkc3Rwb3J0OiBpbjAgIH0K
ICAjIEJTUCBDb25uZWN0aW9ucwogIC0geyBzcmNibGs6IHJhZGlvMCwgICBzcmNwb3J0OiBjdHJs
cG9ydCwgZHN0YmxrOiBfZGV2aWNlXywgZHN0cG9ydDogY3RybHBvcnQgfQogIC0geyBzcmNibGs6
IHJlcGxheTAsICBzcmNwb3J0OiBheGlfcmFtLCAgZHN0YmxrOiBfZGV2aWNlXywgZHN0cG9ydDog
ZHJhbSAgICAgfQogIC0geyBzcmNibGs6IF9kZXZpY2VfLCBzcmNwb3J0OiByYWRpbywgICAgZHN0
YmxrOiByYWRpbzAsICAgZHN0cG9ydDogcmFkaW8gICAgfQogIC0geyBzcmNibGs6IF9kZXZpY2Vf
LCBzcmNwb3J0OiB0aW1lLCAgICAgZHN0YmxrOiByYWRpbzAsICAgZHN0cG9ydDogdGltZSAgICAg
fQoKIyBBIGxpc3Qgb2YgYWxsIGNsb2NrIGRvbWFpbiBjb25uZWN0aW9ucyBpbiBkZXNpZ24KIyAt
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIyBGb3JtYXQ6
IEEgbGlzdCBvZiBjb25uZWN0aW9uIG1hcHMgKGxpc3Qgb2Yga2V5LXZhbHVlIHBhaXJzKSB3aXRo
IHRoZSBmb2xsb3dpbmcga2V5cwojICAgLSBzcmNibGsgID0gU291cmNlIGJsb2NrIHRvIGNvbm5l
Y3QgKEFsd2F5cyAiX2RldmljZSJfKQojICAgLSBzcmNwb3J0ID0gQ2xvY2sgZG9tYWluIG9uIHRo
ZSBzb3VyY2UgYmxvY2sgdG8gY29ubmVjdAojICAgLSBkc3RibGsgID0gRGVzdGluYXRpb24gYmxv
Y2sgdG8gY29ubmVjdAojICAgLSBkc3Rwb3J0ID0gQ2xvY2sgZG9tYWluIG9uIHRoZSBkZXN0aW5h
dGlvbiBibG9jayB0byBjb25uZWN0CmNsa19kb21haW5zOgogIC0geyBzcmNibGs6IF9kZXZpY2Vf
LCBzcmNwb3J0OiByYWRpbywgZHN0YmxrOiByYWRpbzAsICBkc3Rwb3J0OiByYWRpbyB9CiAgLSB7
IHNyY2JsazogX2RldmljZV8sIHNyY3BvcnQ6IGRyYW0sICBkc3RibGs6IHJlcGxheTAsIGRzdHBv
cnQ6IG1lbSAgIH0K

--b1_g1X1Ja48omFITs1w8faS1qog6VBnDS86rKh8naY2rs
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--b1_g1X1Ja48omFITs1w8faS1qog6VBnDS86rKh8naY2rs--
