Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 572BE35EB9E
	for <lists+usrp-users@lfdr.de>; Wed, 14 Apr 2021 06:04:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0C388384672
	for <lists+usrp-users@lfdr.de>; Tue, 13 Apr 2021 23:54:10 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 68D3E3844FD
	for <usrp-users@lists.ettus.com>; Tue, 13 Apr 2021 23:53:22 -0400 (EDT)
Date: Wed, 14 Apr 2021 03:53:22 +0000
To: usrp-users@lists.ettus.com
From: brendan.horsfield@vectalabs.com
Message-ID: <1X762d3id1qpgWltGvFnXfSgoZnIPrT4VnSBDCZEbA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CALNMZ8UPCZhZAeDX+0OzjB3sETEmCyLCFto6+RbSe1XAeO_Wpw@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: POQUGTTW2POFCWPDQLA3VJSD6CP7YIKQ
X-Message-ID-Hash: POQUGTTW2POFCWPDQLA3VJSD6CP7YIKQ
X-MailFrom: brendan.horsfield@vectalabs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Contradictory overflow messages when recording rx samples with Python API
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/POQUGTTW2POFCWPDQLA3VJSD6CP7YIKQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4130099608461411651=="

This is a multi-part message in MIME format.

--===============4130099608461411651==
Content-Type: multipart/alternative;
 boundary="b1_1X762d3id1qpgWltGvFnXfSgoZnIPrT4VnSBDCZEbA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_1X762d3id1qpgWltGvFnXfSgoZnIPrT4VnSBDCZEbA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Code snippet in previous post got scrambled by Gmail.  Should have read:

```
while num_rx_samps < target_num_samples:=C2=A0 =C2=A0=20
    try:=C2=A0 =C2=A0 =C2=A0 =C2=A0=20
        samps =3D rx_streamer.recv(recv_buffer, metadata)=C2=A0 =C2=A0 =C2=
=A0 =C2=A0=20
        print(metadata.error_code)=C2=A0 =C2=A0 =C2=A0 =C2=A0=20
        if samps:
            etc
```

--b1_1X762d3id1qpgWltGvFnXfSgoZnIPrT4VnSBDCZEbA
Content-Type: text/html; charset=us-ascii

<p>Code snippet in previous post got scrambled by Gmail.  Should have read:</p><pre><code>while num_rx_samps &lt; target_num_samples:&nbsp; &nbsp; 
    try:&nbsp; &nbsp; &nbsp; &nbsp; 
        samps = rx_streamer.recv(recv_buffer, metadata)&nbsp; &nbsp; &nbsp; &nbsp; 
        print(metadata.error_code)&nbsp; &nbsp; &nbsp; &nbsp; 
        if samps:
            etc</code></pre>


--b1_1X762d3id1qpgWltGvFnXfSgoZnIPrT4VnSBDCZEbA--

--===============4130099608461411651==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4130099608461411651==--
