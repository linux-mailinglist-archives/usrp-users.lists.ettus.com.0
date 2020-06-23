Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C75204690
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jun 2020 03:15:12 +0200 (CEST)
Received: from [::1] (port=44234 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jnXWn-0007eS-4I; Mon, 22 Jun 2020 21:15:09 -0400
Received: from smtp76.iad3a.emailsrvr.com ([173.203.187.76]:43187)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_ECDH_anon_WITH_AES_256_CBC_SHA
 (Exim 4.93) (envelope-from <epoletaev@i-blades.com>)
 id 1jnXWj-0007aN-DU
 for usrp-users@lists.ettus.com; Mon, 22 Jun 2020 21:15:05 -0400
X-Auth-ID: epoletaev@i-blades.com
Received: by smtp10.relay.iad3a.emailsrvr.com (Authenticated sender:
 epoletaev-AT-i-blades.com) with ESMTPSA id 6AAD74726
 for <usrp-users@lists.ettus.com>; Mon, 22 Jun 2020 21:14:24 -0400 (EDT)
X-Sender-Id: epoletaev@i-blades.com
Received: from [192.168.1.12] (mx-ll-223.204.222-1.dynamic.3bb.co.th
 [223.204.222.1]) (using TLSv1.2 with cipher AES256-GCM-SHA384)
 by 0.0.0.0:465 (trex/5.7.12); Mon, 22 Jun 2020 21:14:24 -0400
Date: Tue, 23 Jun 2020 08:14:13 +0700
To: usrp-users@lists.ettus.com
Message-ID: <5cdd41e9-5b4f-4876-82de-878db9201c6a@Spark>
References: <dfbc4b72-9d92-4f06-b850-6923cccb276b@Spark>
X-Readdle-Message-ID: 5cdd41e9-5b4f-4876-82de-878db9201c6a@Spark
MIME-Version: 1.0
X-Classification-ID: add406a8-5f61-4896-bedf-499d991c67bb-1-1
Subject: [USRP-users] AM transmission
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Ernest Poletaev via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ernest Poletaev <epoletaev@i-blades.com>
Content-Type: multipart/mixed; boundary="===============3591971467241521168=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============3591971467241521168==
Content-Type: multipart/alternative; boundary="5ef1576a_79838cb2_2be"

--5ef1576a_79838cb2_2be
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Hello everyone,

I'm new to SDR and trying to implement transmission with AM Modulation using uhd library with B205mini board.

Currently I have following procedure:

Set RX and TX parameters for RF frequency, channel 0
Set sampling frequency to 1M samples per second
Set RX and TX gain
Receiving as sc8, sc8
Transmitting as fc32, sc8

-loop:

Receiving:

As usual with AM demodulation and it is working

Transmitting:

On audio sink get next 4096 samples of 44.1KHz 16 bit PCM raw audio
Convert each 16 bit sample to complex float with Q=[audio sample normalized to -1 - 1] and I = 0
Resample (simple interpolation) 44100Hz buffer to 1MHz
Send buffer for transmission

-end loop

As RX and TX have same frequency I can see data on RF Analyzer, but it didn't demodulates to an audio signal.

Am I missing something or my assumption is wrong on some steps?

Regards,
Ernest

--5ef1576a_79838cb2_2be
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<html xmlns=3D=22http://www.w3.org/1999/xhtml=22>
<head>
<title></title>
</head>
<body>
<div name=3D=22messageBodySection=22>
<div dir=3D=22auto=22>Hello everyone,<br />
<br />
I'm new to SDR and trying to implement transmission with AM Modulation us=
ing uhd library with B205mini board.<br />
<br />
Currently I have following procedure:<br />
<br />
Set RX and TX parameters for R=46 frequency, channel 0<br />
Set sampling frequency to 1M samples per second<br />
Set RX and TX gain<br />
Receiving as sc8, sc8<br />
Transmitting as fc32, sc8<br />
<br />
-loop:<br />
<br />
Receiving:<br />
<br />
As usual with AM demodulation and it is working<br />
<br />
Transmitting:<br />
<br />
On audio sink get next 4096 samples of 44.1KHz 16 bit PCM raw audio<br />=

Convert each 16 bit sample to complex float with Q=3D=5Baudio sample norm=
alized to -1 - 1=5D and I =3D 0<br />
Resample (simple interpolation) 44100Hz buffer to 1MHz<br />
Send buffer for transmission<br />
<br />
-end loop<br />
<br />
As RX and TX have same frequency I can see data on R=46 Analyzer, but it =
didn't demodulates to an audio signal.<br />
<br />
Am I missing something or my assumption is wrong on some steps=3F<br /></=
div>
</div>
<div name=3D=22messageSignatureSection=22><br />
<div class=3D=22match=46ont=22>
<div dir=3D=22auto=22>Regards,
<div dir=3D=22auto=22>Ernest</div>
</div>
</div>
</div>
</body>
</html>

--5ef1576a_79838cb2_2be--



--===============3591971467241521168==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3591971467241521168==--


