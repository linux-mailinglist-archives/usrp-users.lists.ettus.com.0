Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D722A54043B
	for <lists+usrp-users@lfdr.de>; Tue,  7 Jun 2022 19:01:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AD7F5383F5C
	for <lists+usrp-users@lfdr.de>; Tue,  7 Jun 2022 13:01:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654621266; bh=Q36nAzj/NgTfZmHEyk07DrwH593nE+qr1FtOAu7psWQ=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=YRE97PDEm4O/AFwdR7bu2vGSkWs5nzTqcBPG/aargNFMyENWcawiMT+bLgXxpj2Cl
	 y9h1n36FF4cXI92R0s6mRGCmgyaLxLQSwSkbx7g1hLAm9A/nYJDeS4F3yK5ktRN2Wo
	 n201iprbbFRelD1kcFPX7CbFktwHZTab5lELLXvsTtNgq76fHxbhZJOiIbqEDh9o0A
	 BKj17fpS7URImD66DCEc2OTudtv48ul3+1sE+s9iFQb1hubfDg4+3fZjIBAs8N9bYB
	 frXTtnGnVsYd+A1i1DMOu0kDUDtrvRm6bR5OlID41lurTtd7R3WCvN4xXLvqBKEB69
	 efEkC5UpOmjbw==
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 2F7D3383EEE
	for <usrp-users@lists.ettus.com>; Tue,  7 Jun 2022 12:59:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GwVejzFD";
	dkim-atps=neutral
Received: by mail-pj1-f45.google.com with SMTP id a10so16144912pju.3
        for <usrp-users@lists.ettus.com>; Tue, 07 Jun 2022 09:59:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=1t26oNIWr1X5gQGvhvTp28NP1UxmeFbxYrYcBeZOp50=;
        b=GwVejzFDjteM47RzNuMmM9LbiSPyoGFAr+Nw7vK4rrKI8H7I5fmwyaE7U8d+6IRkUo
         QjXnst+k3gk8agoW4+X7B/ciHojV/KzQ38oXOeaGmtC/1PrWtfOIA3tK338KKHyVSmph
         kI3Ackok3E4HAZ7TGq/OuAWU3GMtF7UXlERBCI/525/S+uySOTcEGul8pNd0uXf5yUgW
         xe/8S+1CbztQW8GbNkH9YGDPtVKf9A6r5wAroOymLG/mntD+n/yAPjci//NYym1U1k22
         4EKQq0kKuYr/nrO96Jw2DzDhCiDsD6CujzDPJ23hABeHMOvOKjyvo8cByJjLjlTttnxx
         XmrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=1t26oNIWr1X5gQGvhvTp28NP1UxmeFbxYrYcBeZOp50=;
        b=vunIqKSLCHFUuLKOBNbZJDKXq5yvso26sTjrMh3u+toEh0rqiq3NxGb2nK1371rUM6
         agswHwjrgCjaX52tT9OiGmLMSYtzK70FrJQcZvIkQz0zsvqcolDecnFgbiJSGChRMH3f
         +M4SeAi19CCO2XuLjUHqsrs9umhYgw7YkMH+epeH3FZrq9/rWzzdr3Qr4w85q+CMwiMG
         ze71mjHCMiZg4OSLax+HKA+nxnM2V12EgE/klZEK232F0/DvnpHxew0N5bTfe4fKomJg
         4XvGaC7D5Xc26zURUtT0wwjpYdkJX/43OEwNdO4DW2WGttX2QLYLiQODIMHkgDcLNVRh
         Lq2w==
X-Gm-Message-State: AOAM5314JwCoihLYEFV5SQLmkuglfoMwFmXIft/cBsQ77GmLaRDPxxYG
	HLvNB6vOzDyMOUSRhtdaZIrfDwnK63+gO5zhpULpnFOm
X-Google-Smtp-Source: ABdhPJzAptdDh797Oj0tAzcNBCoc3mrAiFUI23rL/nxkKX7GvoXCiFhb0Fe60UIDgrwKg3ijEab9A2Sm3Tb3XB0Sns0=
X-Received: by 2002:a17:902:bc84:b0:167:80c6:aedd with SMTP id
 bb4-20020a170902bc8400b0016780c6aeddmr10438362plb.97.1654621191917; Tue, 07
 Jun 2022 09:59:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAFghhNONXTnD5jeqcAGprLGXCuQ+HsNmgExT57u9GPFkqsCjpQ@mail.gmail.com>
In-Reply-To: <CAFghhNONXTnD5jeqcAGprLGXCuQ+HsNmgExT57u9GPFkqsCjpQ@mail.gmail.com>
From: Marcin Puchlik <puchlikmarcin@gmail.com>
Date: Tue, 7 Jun 2022 18:59:40 +0200
Message-ID: <CAFghhNMD_KjQDNTfRNtbR_G6VB1XG+OVU1=9JgsVT43m8TGZNA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: E7I6ZL4UPH6GH3QQTHIEU67SEJHVEEJL
X-Message-ID-Hash: E7I6ZL4UPH6GH3QQTHIEU67SEJHVEEJL
X-MailFrom: puchlikmarcin@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error while compiling rx_samples_to_udp.cpp
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/E7I6ZL4UPH6GH3QQTHIEU67SEJHVEEJL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1995664222835320897=="

--===============1995664222835320897==
Content-Type: multipart/alternative; boundary="00000000000061d6da05e0de84d5"

--00000000000061d6da05e0de84d5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Sorry, while running :)


wt., 7 cze 2022 o 18:44 Marcin Puchlik <puchlikmarcin@gmail.com> napisa=C5=
=82(a):

> Hi,
> While compiling this
> <https://github.com/EttusResearch/uhd/blob/master/host/examples/rx_sample=
s_to_udp.cpp> example
> I got the error:
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
> *Creating the usrp device with: ...[INFO] [UHD] linux; GNU C++ version
> 9.4.0; Boost_107100; UHD_4.2.0.0-0ubuntu1~focal1[INFO] [B200] Loading
> firmware image: /usr/share/uhd/images/usrp_b200_fw.hex...[INFO] [B200]
> Detected Device: B200[INFO] [B200] Loading FPGA image:
> /usr/share/uhd/images/usrp_b200_fpga.bin...[INFO] [B200] Operating over U=
SB
> 2.[INFO] [B200] Detecting internal GPSDO.... [INFO] [GPS] No GPSDO
> found[INFO] [B200] Initialize CODEC control...[INFO] [B200] Initialize
> Radio control...[INFO] [B200] Performing register loopback test... [INFO]
> [B200] Register loopback test passed[INFO] [B200] Setting master clock ra=
te
> selection to 'automatic'.[INFO] [B200] Asking for clock rate 16.000000
> MHz... [INFO] [B200] Actually got clock rate 16.000000 MHz.Error:
> LookupError: IndexError: multi_usrp::mb_root(140722477363728) -
> LookupError: IndexError: multi_usrp::mb_root(140722477363728) - path not
> found*
>
> The command I am using is: *g++ samples_to_udp.cpp -o out -luhd
> -lboost_system -lboost_program_options -lboost_thread*
>
> I am asking for your guidance.
> Best
> *Marcin Puchlik*
>

--00000000000061d6da05e0de84d5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Sorry, while running :)=C2=A0<br clear=3D"all"><div><div d=
ir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><di=
v dir=3D"ltr"><div><div dir=3D"ltr"><br></div></div></div></div></div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">wt., =
7 cze 2022 o 18:44=C2=A0Marcin Puchlik &lt;<a href=3D"mailto:puchlikmarcin@=
gmail.com">puchlikmarcin@gmail.com</a>&gt; napisa=C5=82(a):<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<div>While =
compiling <a href=3D"https://github.com/EttusResearch/uhd/blob/master/host/=
examples/rx_samples_to_udp.cpp" target=3D"_blank">this</a>=C2=A0example I g=
ot the error:</div><div><i>Creating the usrp device with: ...<br>[INFO] [UH=
D] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.2.0.0-0ubuntu1~focal1<=
br>[INFO] [B200] Loading firmware image: /usr/share/uhd/images/usrp_b200_fw=
.hex...<br>[INFO] [B200] Detected Device: B200<br>[INFO] [B200] Loading FPG=
A image: /usr/share/uhd/images/usrp_b200_fpga.bin...<br>[INFO] [B200] Opera=
ting over USB 2.<br>[INFO] [B200] Detecting internal GPSDO.... <br>[INFO] [=
GPS] No GPSDO found<br>[INFO] [B200] Initialize CODEC control...<br>[INFO] =
[B200] Initialize Radio control...<br>[INFO] [B200] Performing register loo=
pback test... <br>[INFO] [B200] Register loopback test passed<br>[INFO] [B2=
00] Setting master clock rate selection to &#39;automatic&#39;.<br>[INFO] [=
B200] Asking for clock rate 16.000000 MHz... <br>[INFO] [B200] Actually got=
 clock rate 16.000000 MHz.<br>Error: LookupError: IndexError: multi_usrp::m=
b_root(140722477363728) - LookupError: IndexError: multi_usrp::mb_root(1407=
22477363728) - path not found</i></div><div><br></div><div>The command I am=
 using is:=C2=A0<i>g++ samples_to_udp.cpp -o out -luhd -lboost_system -lboo=
st_program_options -lboost_thread</i></div><div><i><br></i></div><div>I am =
asking for your guidance.<br clear=3D"all"><div><div dir=3D"ltr"><div dir=
=3D"ltr"><div dir=3D"ltr">Best<br><div><b>Marcin Puchlik</b></div></div></d=
iv></div></div></div></div>
</blockquote></div>

--00000000000061d6da05e0de84d5--

--===============1995664222835320897==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1995664222835320897==--
