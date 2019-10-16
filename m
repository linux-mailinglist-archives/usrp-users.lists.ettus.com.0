Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A39AD9779
	for <lists+usrp-users@lfdr.de>; Wed, 16 Oct 2019 18:33:57 +0200 (CEST)
Received: from [::1] (port=35520 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iKmFI-0006EO-Ek; Wed, 16 Oct 2019 12:33:56 -0400
Received: from mail-qk1-f178.google.com ([209.85.222.178]:34420)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <zcao@c3commsystems.com>)
 id 1iKmFD-00064D-Mj
 for USRP-users@lists.ettus.com; Wed, 16 Oct 2019 12:33:51 -0400
Received: by mail-qk1-f178.google.com with SMTP id q203so23363816qke.1
 for <USRP-users@lists.ettus.com>; Wed, 16 Oct 2019 09:33:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=c3commsystems-com.20150623.gappssmtp.com; s=20150623;
 h=from:mime-version:subject:message-id:date:to;
 bh=ouFL352MCOp0ABOZjmV37h9nDEkbpTDB/20RqMbYcgo=;
 b=UIyRfTPiFX4Qz+YkTSk79poqiKaE43lGe9ciin282iwBVr0n+PgeAGlJNch1ZtMDmh
 Eoiv+yT7pxskEaK28jrlU939VY6L8YfhMDPrdWwnQbwy/qOe2rpkJAD+ZzneWd/OXNbV
 8K+2zJahZ+qVPDIVRcRH2ImovBS5KPoqmxNjAULO5w8tMwKQBzAOGxt64j3y5LlpRveJ
 oB6Cu0thPI3bnxFn2M1a64VaTOShu/A/PkNcAz7Ffh2GEPcxG/lihQlIDm+dSMWfZIc9
 G0+BlI5+XwbWvXpBS5ujEHHOUXZMn3Mx1+Q4j9wpa8e4uOogkulzp8I+naAS5AR0RlmR
 CYOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:mime-version:subject:message-id:date:to;
 bh=ouFL352MCOp0ABOZjmV37h9nDEkbpTDB/20RqMbYcgo=;
 b=ZPZxSb+BJe/sKfnn+fyCm1nxDfYdGgKyTCph90L1Zq/FSI0c45STrkmeRndpuGf4kM
 rz1Ifm4dSRwtvlgZ0thLoCROPVUTAoyGAX20Qn2kbnL7N0czjnrBgpYjS8Yi2LSRHMRo
 amVw6KUTGK84d+S7DgbBJmJlL1G23UaihyD6vAD0jZFDpxegu+WOUkvdNX9RKGhbfROa
 /oNz2TvofCvTE7xcR92DLUS+vpO4UXDkqRx5qoHtuYYuOoB9MWWI1Op3qeIca/e5ILP3
 L5w2Lv+G+evb/Pw9xHo0y+5/jjJvlJWeNItP4mD1BTL+nWchyXmrhzDngZole3inNN/S
 6bSA==
X-Gm-Message-State: APjAAAUz547R1AesIwoWsLKW6FQRbYlw4tPfmG9uhIdkF3kOIgZVulTp
 QWNsozyFETne04Ve/VMAWf7Zubogj2I=
X-Google-Smtp-Source: APXvYqzWxnB6q7DOK++ZFIYfvSyZooyxgFp1fJAP6sAhcHVC1qqfymkeMWqZrdUmhBN1a5FXj72M0g==
X-Received: by 2002:a05:620a:13f2:: with SMTP id
 h18mr41369451qkl.218.1571243590531; 
 Wed, 16 Oct 2019 09:33:10 -0700 (PDT)
Received: from [192.168.2.138] (pool-173-66-203-125.washdc.fios.verizon.net.
 [173.66.203.125])
 by smtp.gmail.com with ESMTPSA id f27sm10898308qkh.42.2019.10.16.09.33.09
 for <USRP-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 16 Oct 2019 09:33:09 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Message-Id: <28B45C9C-A4D1-4752-8921-25BFB5E5FF19@c3commsystems.com>
Date: Wed, 16 Oct 2019 12:33:08 -0400
To: USRP-users <USRP-users@lists.ettus.com>
X-Mailer: Apple Mail (2.3445.9.1)
Subject: [USRP-users] E310 GPS time source?
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: zcao--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: "zcao@c3commsystems.com" <zcao@c3commsystems.com>
Content-Type: multipart/mixed; boundary="===============4117546013608308962=="
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


--===============4117546013608308962==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_0F8613BF-0C6E-46F0-A4E9-197D9C049931"


--Apple-Mail=_0F8613BF-0C6E-46F0-A4E9-197D9C049931
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi,

UHD lib provides a function, get_time_last_pps(), which suppose to =
provides the time stamp for the latest PPS right edge. I am wondering =
what is the source of the time information the above function uses?=20

Specifically, we are aiming at synchronize multiple E310 devices for a =
TDMA system. Each E310 is standalone and has no network connect to a =
common NTP server. =46rom the schematics of E310, it seems to me that =
the GPS receiver chip only provides the PPS output to the FPGA. I =
didn=E2=80=99t find any hardware support that allows E310 to obtain the =
time information from GPS, other than the edge of each second.=20

Am I right? If so, what time information the function =
get_time_last_pps() actually returns? Is there a way to sync the time =
across multiple standalone E310?

Thanks,
Arnold=20

C-3 Comm Systems, LLC
3100 Clarendon Blvd., Suite 200
Arlington, VA 22201
Phone: (703) 829-0588
Email : zcao@c3commsystems.com <mailto:zcao@c3commsystems.com>

--Apple-Mail=_0F8613BF-0C6E-46F0-A4E9-197D9C049931
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">Hi,<div class=3D""><br class=3D""></div><div class=3D"">UHD =
lib provides a function, get_time_last_pps(), which suppose to provides =
the time stamp for the latest PPS right edge. I am wondering what is the =
source of the time information the above function uses?&nbsp;</div><div =
class=3D""><br class=3D""></div><div class=3D"">Specifically, we are =
aiming at synchronize multiple E310 devices for a TDMA system. Each E310 =
is standalone and has no network connect to a common NTP server. =46rom =
the schematics of E310, it seems to me that the GPS receiver chip only =
provides the PPS output to the FPGA. I didn=E2=80=99t find any hardware =
support that allows E310 to obtain the time information from GPS, other =
than the edge of each second.&nbsp;</div><div class=3D""><br =
class=3D""></div><div class=3D"">Am I right? If so, what time =
information the function get_time_last_pps() actually returns? Is there =
a way to sync the time across multiple standalone E310?</div><div =
class=3D""><br class=3D""></div><div class=3D"">Thanks,</div><div =
class=3D"">Arnold&nbsp;</div><div class=3D""><div style=3D"color: rgb(0, =
0, 0); letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D""><div =
style=3D"color: rgb(0, 0, 0); letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; word-wrap: =
break-word; -webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D""><div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; word-wrap: =
break-word; -webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D""><div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; word-wrap: =
break-word; -webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D""><div class=3D""><br class=3D""></div><div class=3D""><b =
class=3D"">C-3 Comm Systems, LLC</b></div><div class=3D"">3100 Clarendon =
Blvd., Suite 200</div><div class=3D"">Arlington, VA 22201</div><div =
class=3D"">Phone: (703) 829-0588</div><div class=3D"">Email :<span =
class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"mailto:zcao@c3commsystems.com" =
class=3D"">zcao@c3commsystems.com</a></div></div></div></div></div>
</div>
<br class=3D""></body></html>=

--Apple-Mail=_0F8613BF-0C6E-46F0-A4E9-197D9C049931--


--===============4117546013608308962==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4117546013608308962==--

