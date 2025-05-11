Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B5FF9AB265C
	for <lists+usrp-users@lfdr.de>; Sun, 11 May 2025 05:44:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E8A7C385CB7
	for <lists+usrp-users@lfdr.de>; Sat, 10 May 2025 23:44:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1746935080; bh=dyR7L7SF0ZPRgDbJMFIgVabRQ2/pSBc2FVY5V0YR1cY=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=EU9+FJviK1U6qGtYnDOWgPVEncMiuNIQUA4G+/mCMapD5BR4WQGoi2WxxNHPi2FFb
	 CB0ju2FUhu7WTd9AvHKGfdfUKNcWyPUzuZKPRC34pSorTiSDerX66LBpgoR/qnNbJH
	 Qo38A/8U1AUl6PCZ+8KNk8f3D8vUMRWjCJ+Mxw2ZhH4oTcAej4p7c+yFOQd0ZvPu9n
	 WNANYV+tnJfU5KKw2B7+4XZvjdV5IJ7eIFGH1gNrWPTg2GcFedr8nj3Z4H0xWMBsSq
	 vsiLhVLT2OqVtuC9gj2ea3FstUc6P2LEzHY9CIb58K/E5UPfMCdVm9rwuEol9rZkLl
	 DSjbs74Q+pHpQ==
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 53478385AD8
	for <usrp-users@lists.ettus.com>; Sat, 10 May 2025 23:43:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="nKlDaJ7a";
	dkim-atps=neutral
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-e7311e66a8eso3149112276.2
        for <usrp-users@lists.ettus.com>; Sat, 10 May 2025 20:43:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1746935023; x=1747539823; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=UzUG9c3qV1EZg2h986+xyZ+FLJhHFbERL0J7VLG/4Lo=;
        b=nKlDaJ7aLI4UJoXbKCLaauhnPqA28oRAS9JJru+/Pt/pFF7l66v1N2MWqgkSPvcCSV
         fiUcE8dHQvK+vCAjy2lQRgkYBI++C1LQZVhUC9Rq9pkSZf153Iem6KI9hg8HzMInZGrw
         KmZPNekp2ZvLu617tXc5esw9q+rw0xoCNbQSs7dUinnSOt9OPPr0UXqOk0xWfPpgefjX
         Wu3XF+GMZH5kbMgxNoKFKFtkEoCYCM9LJ/1H6NeXzS8BFHor7qqFOlpl71jvvxahClms
         q0o+l9L3gDLdDgKE82sk9Tm3S8KiphNCDcQb1IIdAJOupTQTX2fydThuq8WT5Qme61lp
         dkmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746935023; x=1747539823;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UzUG9c3qV1EZg2h986+xyZ+FLJhHFbERL0J7VLG/4Lo=;
        b=qEiw1ngCr01KBZUrzRw8Tqxxb3y7s4RBWunUxng1ID5tu4UUkhxtH2wUikpcoX1Iut
         cRd96hdx/OiX/fomQTwa5kdbNHn3i96TZ6NpASKK6arrSXC+Tfe0xvBvPnLYmU3iXG2P
         SWiY8sDItd8QpkJ2suFspZWmnDgylNOcl+en+kGN7ihwidH8EwzUUBqBs/iUPlBOsRsb
         uo2+bq3DEJFRGMk+RzikslYtgTghJGzheMo/98pd7zsSGyEZQiTLI5VgdIbraCLMuQcY
         AvYipK7TDBgBDf6ApKZmd5g4GiPMowVSC5FNzVQJO0bUIpTtj2XMYdwgidDjc1i0LXMS
         Qiww==
X-Gm-Message-State: AOJu0YzYFSyYMCuBVWNSKrmnycRDFCSYoCVCmQh/ACbv+F1fEIfX+lhY
	8Znzv8vVjkCTGUwuHS83eOMPFBgMy1+CZiSj5AFW5D15hiZWoQWnT4vyidY8Ych3McjJqMeaKcd
	yekBslqqYFAou9a7pPEDB0l4TaJr7HAf7fVVWPpEC
X-Gm-Gg: ASbGncuSK19NaG3XClTZk3W+3m6tCyg593dPTeayD2Z/dcfqmTqRUIfdns3x9kK3Ot6
	6GBmvSrIRDbEUG5yzmf+tLTjpAdeYooL5ybo93sW4Vz7ltoj45uekj4Y+Lh7F37AFvQ6OBMk+zQ
	Re9X3g4S0xxIiMlqSsLd8n9C4Pf1Mb9VC8VPy3PcZ+3yI=
X-Google-Smtp-Source: AGHT+IHMeZQaQGHQCh8wQ4m6CVbgnZ32ePyOk6gBQk+T4kMBC2mkvTS5VWQSL0VNLeR5Be/2MYDVOw59or8HC6aC5QI=
X-Received: by 2002:a05:690c:a85:b0:708:a265:93ab with SMTP id
 00721157ae682-70a3fb6bf1amr118201167b3.38.1746935023589; Sat, 10 May 2025
 20:43:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK5i==BLmanuhjBCFd5tmTwSbK8sZ0se2p0xHbNkBoC3xQ@mail.gmail.com>
In-Reply-To: <CAEXYVK5i==BLmanuhjBCFd5tmTwSbK8sZ0se2p0xHbNkBoC3xQ@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Sat, 10 May 2025 22:43:27 -0500
X-Gm-Features: AX0GCFs7gR7BQQTN0cujCm08dORLiSKYILYcXJrBuCBq_moI9Bgn3UEnWA_b4X4
Message-ID: <CAFche=geoV=pGeYm4CxyrN3nm762Gub4HfUMT=G18SEv5-ujpA@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID-Hash: IRZ7VVTZ5L7QT7MOTKTLZSRTXRYNIJNM
X-Message-ID-Hash: IRZ7VVTZ5L7QT7MOTKTLZSRTXRYNIJNM
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 bus_clk
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IRZ7VVTZ5L7QT7MOTKTLZSRTXRYNIJNM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8404887947403558180=="

--===============8404887947403558180==
Content-Type: multipart/alternative; boundary="00000000000086f4e30634d401b2"

--00000000000086f4e30634d401b2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Brian,

In theory it should just work, but you have to be careful to change it in
the right place, so that it gets updated everywhere, including outside of
RFNoC. Otherwise, you could end up with clock mismatches in connected
logic, which can cause all kinds of problems. Also, keep in mind that it
will be harder to meet timing with a higher clock rate, so it's much more
likely you'll see timing errors.

For X440, I think the right spot to change it is here:
https://github.com/EttusResearch/uhd/blob/UHD-4.8/fpga/usrp3/top/x400/x4xx.=
sv#L433-L434
and
https://github.com/EttusResearch/uhd/blob/UHD-4.8/fpga/usrp3/top/x400/x4xx.=
sv#L438-L439

Change it from clk_200 to using ce_clk. You'll also need to create the
equivalent ce_clk_rst in the same way clk200_rst was created, but using
ce_clk instead of clk200.

Wade

On Tue, May 6, 2025 at 5:31=E2=80=AFPM Brian Padalino <bpadalino@gmail.com>=
 wrote:

> I'm looking to save some RFNoC resources by slimming down the CHDR
> interface to be 128-bits for my block and, possibly, universally.
>
> I see the CHDR_W as well as the BLOCK_CHDR_W parameters, but I also see
> the bus_clk is set to 200 MHz.
>
> The current 200 MHz CHDR clock @ 128-bit wide interface is slightly too
> slow for my sample rates, but 266 MHz (CE clk) could potentially work.
>
> Is there anything I should be wary of if I want to change the bus_clk to
> be the CE CLK instead of the 200 MHz clock using a 128-bit CHDR interface=
?
>
> Thanks,
> Brian
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000086f4e30634d401b2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Brian,</div><div><br></div><div>In theory it shoul=
d just work, but you have to be careful to change it in the right place, so=
 that it gets updated everywhere, including outside of RFNoC. Otherwise, yo=
u could end up with clock mismatches in connected logic, which can cause al=
l kinds of problems. Also, keep in mind that it will be harder to meet timi=
ng with a higher clock rate, so it&#39;s much more likely you&#39;ll see ti=
ming errors.</div><div><br></div><div>For X440, I think the right spot to c=
hange it is here:</div><div><a href=3D"https://github.com/EttusResearch/uhd=
/blob/UHD-4.8/fpga/usrp3/top/x400/x4xx.sv#L433-L434">https://github.com/Ett=
usResearch/uhd/blob/UHD-4.8/fpga/usrp3/top/x400/x4xx.sv#L433-L434</a></div>=
<div>and</div><div><a href=3D"https://github.com/EttusResearch/uhd/blob/UHD=
-4.8/fpga/usrp3/top/x400/x4xx.sv#L438-L439">https://github.com/EttusResearc=
h/uhd/blob/UHD-4.8/fpga/usrp3/top/x400/x4xx.sv#L438-L439</a></div><div><br>=
</div><div>Change it from clk_200 to using ce_clk. You&#39;ll also need to =
create the equivalent ce_clk_rst in the same way clk200_rst was created, bu=
t using ce_clk instead of clk200.</div><div><br></div><div>Wade</div></div>=
<br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, May 6, 2025 at 5:31=E2=80=AFPM Brian Padalino &lt;<=
a href=3D"mailto:bpadalino@gmail.com">bpadalino@gmail.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">I=
&#39;m looking to save some RFNoC resources by slimming down the CHDR inter=
face to be 128-bits for my block and, possibly, universally.<div><br></div>=
<div>I see the CHDR_W as well as the BLOCK_CHDR_W parameters, but I also se=
e the bus_clk is set to 200 MHz.</div><div><br></div><div>The current 200 M=
Hz CHDR clock=C2=A0@ 128-bit wide interface is slightly too slow for my sam=
ple rates, but 266 MHz (CE clk) could potentially work.</div><div><br></div=
><div>Is there anything I should be wary of if I want to change the bus_clk=
 to be the CE CLK instead of the 200 MHz clock using a 128-bit CHDR interfa=
ce?</div><div><br></div><div>Thanks,</div><div>Brian</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000086f4e30634d401b2--

--===============8404887947403558180==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8404887947403558180==--
