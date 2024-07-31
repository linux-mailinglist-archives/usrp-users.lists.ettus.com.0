Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C61A8942CA6
	for <lists+usrp-users@lfdr.de>; Wed, 31 Jul 2024 13:00:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BC27E385301
	for <lists+usrp-users@lfdr.de>; Wed, 31 Jul 2024 07:00:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1722423641; bh=9O5aOrAJkw/uDg2MKWzUYwQuqLfgqubXUZGu4wMwhnc=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ICSSSdlME16l/R9XrQ8sG/Vqn2uXf77FI5qZQWnxqA9NH6LunzaFRM1fWOES+TQ7z
	 /RCx8o3dVObQufAQjy60CqAmto4xDfhZRvzPX1HhgJGAgQkvnK3GKfPRCtDo490Ncc
	 w5FmhXv5cH0A9HwUBu7D8re0kPKJdN0EXLkzXG4rfug3rd1bBKMo3/dqtjMuaLYkk5
	 w0PdGHfLVDmTLhS0gS+73A5e5rs9mqmHSJKvdNucyvBz+ocr/TCMTcrfHiiQqMD34v
	 8uACuSSeav/c+wfwd/8RAUg6/giWhp0DBnhoxIhwh5Unm/yWCd0XXPr++YwAP7hQY+
	 RYKx+K6jexmSQ==
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46])
	by mm2.emwd.com (Postfix) with ESMTPS id E433C384C06
	for <usrp-users@lists.ettus.com>; Wed, 31 Jul 2024 07:00:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Trx4sofB";
	dkim-atps=neutral
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-4928fa870a9so1157897137.2
        for <usrp-users@lists.ettus.com>; Wed, 31 Jul 2024 04:00:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722423622; x=1723028422; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=nzpcsOum3YJG+d0C0VXf6aYsdspWNm+oz0YLG6WQ25o=;
        b=Trx4sofBZ0BQx8w7uxd/v4sqpsBiCAvANqxDvxlCBprJyVl5Vmq7cEmpnpELwZI7Ly
         Dd6WIx3xxsZ1GoiDztltBGNnHW2krbEetT3ZrRWS8Dd0djkXtnnjnKPD6xG7/XXh2ur1
         6unK6fH+QcOQcgchzHuHQo1n3c/gYJJL3S1kzz9rTS9vBkLsslPp0U2IYfwey0tgljiv
         u4hLKjBLRcjOKj5HWpQKhFFNl6cZQOW90o4pzFZbU+cnlP3BIArD5eebYLXvSamt8N6S
         oqP8yl/6c4u8j4oGz672Lq+1jdWEHeHEPDp9j93HSPGzfpiBDNqGQFCcSO3l+MGX7BH/
         2pUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722423622; x=1723028422;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nzpcsOum3YJG+d0C0VXf6aYsdspWNm+oz0YLG6WQ25o=;
        b=jsEOpBdHVe5uNAxJsC88eIkQ8e5uyLdGrr7DtpqAIAaBGXb5BnJgML9X8SY/ybInQE
         fi4gInrOfl84+fc2Q+qb2MhQcQLqZgD76UyHIZP0LKaJ7i7MjQq6th0l1oqeF4MLkXyD
         mKpWDwaQPVx4NqjV+rLZomb4HvllbhsDM5ssB7kPURDkBQnqxPFNrhmF9ax2rhu4mx8I
         6WekNhV5dUvjEtbmfL+EaHOoiEPT43X7Lga6pmXNDOnw8uTV+Zwq/3jk+SArnfszIQji
         KW21Y85O59BjLu0ahTK9NXt2MrosCu9ZrBDC+16fwAPt1j4fprzrUkB21GbG8j0TB0ly
         8YNg==
X-Gm-Message-State: AOJu0YyjeplEdwDKceumGERr7zcDqteys9MB9s9qEWmN0kPdMtspB3nv
	/qH6Ydsm4B9J2hWMmNvF2SqhmiJz9C/7hlaT/BBi6kbMGcWw890HG/gaq2Gw5cKV53Q8sPf0cbN
	ScobLdq3w8wnEtgtlg9AUwiv0hoOI2nVu
X-Google-Smtp-Source: AGHT+IGda6V/eIaNWXj4eyxinRCgM37N327FgJad3+omzB+v6rAZ8my3nqdj98mxq1iqPfZhiJ0dCnc/kA/8gxYo55U=
X-Received: by 2002:a05:6102:3050:b0:492:ab05:8d62 with SMTP id
 ada2fe7eead31-493fa45a752mr10467062137.21.1722423621437; Wed, 31 Jul 2024
 04:00:21 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Date: Wed, 31 Jul 2024 13:00:10 +0200
Message-ID: <CAG16vQVe44WT2cK8g=KEqVT6qjtFPcfd2WpdNEunCM4UugKNew@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: IVSLGG2QZBVBY5DKMMO37MX2Y7V46ZRC
X-Message-ID-Hash: IVSLGG2QZBVBY5DKMMO37MX2Y7V46ZRC
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Rfnoc loopback in uhd 4.6
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IVSLGG2QZBVBY5DKMMO37MX2Y7V46ZRC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7391360236509138582=="

--===============7391360236509138582==
Content-Type: multipart/alternative; boundary="0000000000001bd1d6061e8900b9"

--0000000000001bd1d6061e8900b9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm trying to run a gnuradio graph with Rx to Tx rfnoc radios in uhd 4.6
new installation, but I'm having the following error: RuntimeError:
RfnocError: Adding edge without disabling is_forward_edge will lead to
unresolvable graph!

In UHD 4.0, I used to install gr-ettus (commit:
865f7d9fbe4faa48557f4e4342db09471c02673f ) applying the rfnoc loopback path
(
https://lists.ettus.com/empathy/thread/WEJHUNGCHZ4SUGEEG4IH25T6T2EC35OW?has=
h=3DWEJHUNGCHZ4SUGEEG4IH25T6T2EC35OW#WEJHUNGCHZ4SUGEEG4IH25T6T2EC35OW)
and the rfnoc_graph block appears with skip_propagation option to be
enabled in rfnoc loopback.
If I install gr-ettus on its master branch, this option does not appear and
I can't apply the patch.
If I try to move to the commit I mentioned, the gr-ettus compilation fails
because the rfnoc_graph block in UHD does not have the
set_streamer_adapter_id.

[ 66%] Building CXX object
swig/CMakeFiles/ettus_swig.dir/CMakeFiles/ettus_swig.dir/ettus_swigPYTHON_w=
rap.cxx.o
 error: =E2=80=98class gr::ettus::rfnoc_graph=E2=80=99 has no member named
=E2=80=98set_streamer_adapter_id=E2=80=99
19842 |       (arg1)->set_streamer_adapter_id((std::string const
&)*arg2,arg3,arg4);

How can I do the rfnoc loopback with the UHD 4.6 version then?

Kind Regards,
Maria

--0000000000001bd1d6061e8900b9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;m trying to run a gnuradio gr=
aph with Rx to Tx rfnoc radios in uhd 4.6 new installation, but I&#39;m hav=
ing the following error:=C2=A0RuntimeError: RfnocError: Adding edge without=
 disabling is_forward_edge will lead to unresolvable graph!</div><div><br><=
/div><div>In UHD 4.0, I used to install gr-ettus (commit:<span style=3D"bac=
kground-color:rgba(0,0,0,0);color:rgb(0,0,0);font-family:WordVisi_MSFontSer=
vice,&quot;Courier New&quot;,&quot;Courier New_EmbeddedFont&quot;,&quot;Cou=
rier New_MSFontService&quot;,monospace;font-size:14px;font-variant-ligature=
s:none;font-weight:700">865f7d9fbe4faa48557f4e4342db09471c02673f</span>=C2=
=A0) applying the rfnoc loopback path (<a href=3D"https://lists.ettus.com/e=
mpathy/thread/WEJHUNGCHZ4SUGEEG4IH25T6T2EC35OW?hash=3DWEJHUNGCHZ4SUGEEG4IH2=
5T6T2EC35OW#WEJHUNGCHZ4SUGEEG4IH25T6T2EC35OW">https://lists.ettus.com/empat=
hy/thread/WEJHUNGCHZ4SUGEEG4IH25T6T2EC35OW?hash=3DWEJHUNGCHZ4SUGEEG4IH25T6T=
2EC35OW#WEJHUNGCHZ4SUGEEG4IH25T6T2EC35OW</a>) and the rfnoc_graph block app=
ears with skip_propagation option to be enabled in rfnoc loopback.</div><di=
v>If I install gr-ettus on its master branch, this option does not appear a=
nd I can&#39;t apply the patch.</div><div>If I try to move to the commit I =
mentioned, the gr-ettus compilation fails because the rfnoc_graph block in =
UHD does not have the set_streamer_adapter_id.</div><div><br></div><div>[ 6=
6%] Building CXX object swig/CMakeFiles/ettus_swig.dir/CMakeFiles/ettus_swi=
g.dir/ettus_swigPYTHON_wrap.cxx.o<br>=C2=A0error: =E2=80=98class gr::ettus:=
:rfnoc_graph=E2=80=99 has no member named =E2=80=98set_streamer_adapter_id=
=E2=80=99<br>19842 | =C2=A0 =C2=A0 =C2=A0 (arg1)-&gt;set_streamer_adapter_i=
d((std::string const &amp;)*arg2,arg3,arg4);</div><div><br></div><div>How c=
an I do the rfnoc loopback with the UHD 4.6 version then?</div><div><br></d=
iv><div>Kind Regards,</div><div>Maria</div></div>

--0000000000001bd1d6061e8900b9--

--===============7391360236509138582==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7391360236509138582==--
