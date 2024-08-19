Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AABD956B0F
	for <lists+usrp-users@lfdr.de>; Mon, 19 Aug 2024 14:41:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0D6C038505B
	for <lists+usrp-users@lfdr.de>; Mon, 19 Aug 2024 08:41:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724071292; bh=c24R65OkPF4EuQOafVK2tIQQVfujQp3L/GKbT7rDG4E=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=CPsV1M03eulywFNOV2Plv1hdiDwmkmydvYxckHI1DTJOYrYTaaFpeEvKvT/LcuDL4
	 YTeWcB2+k6pKQmwzjRY7qMZ/0DqD7bB7fbC65tR6J2tAyTWEAtfN2x5SitEZkLEqU2
	 Fqz0+VOqEv/LOOax5KJnRuLCnEqIFdpByYZ5GculYquBdmZFKA9HxaReo6RoyP0em+
	 7w4+Ujj5K094BWJx3+EN68OWpfVcRPgvoc+YDu0/CCIQkQCbSSchCn3zM7YSj08Dae
	 0w/9tDCwqd2kK9VAJ6o9MbxQHF3UoUwoevw1naqWGJR8mE6axiEKHCNZX8LigqnawP
	 9pC2ywF4ug19Q==
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 782AB384EAA
	for <usrp-users@lists.ettus.com>; Mon, 19 Aug 2024 08:41:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="E4t9P+mc";
	dkim-atps=neutral
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a77ec5d3b0dso485679666b.0
        for <usrp-users@lists.ettus.com>; Mon, 19 Aug 2024 05:41:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1724071281; x=1724676081; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=N3uu2CGwkMMrnEbEPtxcexPJ9lX0FoGCskx2PM5PD1s=;
        b=E4t9P+mcWk1RNYaN/ChhVbihuT3vHdQnGasYKIBdjCGG7qYvhJrkT/LgS5kFSLkavf
         9iCBMNmNoG9iG+RdRNUCRvhUe+ai9yeTirJZ5CKvldCFbAwjXHSfEOUKf0BqOey/FKzz
         F/wUtcBu2SKgCBF/Usqw9O8fS2PH2CegXKmsVHOJHO9kraukSJnnhvJPEFp2DsC+Ybm0
         oes9xc3aooLjdA9BZUF7bYJ4z8MgJVw9EB5WeQPAjJDwyciPJIbNb0TkshhJzM+o1bNt
         aIQ12m+W40wCP2Qk68/gw3VmkMwv+PQnFEaOocDcmhFgt9bIamqM/1olqil5nuANzLrZ
         H3FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724071281; x=1724676081;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N3uu2CGwkMMrnEbEPtxcexPJ9lX0FoGCskx2PM5PD1s=;
        b=dBYbaq5EktlDx7pOM+ThFy1UQ8RL61dJSi9VhLb3/VEgPQFXt1jBea2Tym89PmgnMd
         S87TKbhMXtrKL1Mxf6WZH1cb6aI2/cXz2DZuRCEMcCuSIvPmK9CuqrWE0xGBEPS+Ae50
         5345xIpQKaT6Q8lNxLrNqVqWe2rjPGqREzba4DPFvY1bBMZbx1heic+a8m1IborjAzRq
         fIBAS8smJgQd3LG/WZ9JA34IYbAY8MtrM6878mGmfT2G6aGfTQax6BPZxRSRE4Ybniks
         2a8nBpVQDNBWz/fcwDXArLoiqZ0l1DpqruSl9dK6QrO/n2Gqa6z/SfDOYg5b4wuqQY09
         4kFA==
X-Gm-Message-State: AOJu0YxSwRWuR4h83hEXVpP+Phqx+06scWkF1F2bhMSpe2QLwVnyGax6
	2kb0StK7j1+VahQfctarZ4PB12MwtuklXu7Bl/8wPTMSoLs5p9FvStbzUKd0pip0prDgZ//h43I
	IllM6MZOm0SAkVIU2urEc6nrheHBULUlvkL8Ka/Pl
X-Google-Smtp-Source: AGHT+IEeyM225wmmKOFomJo+PH1uVYjHoQvKoPoaSmxH3ozPkPIE4IzOh0Wq0K4doxPOjFWTh9gN0Eo8+gg4ySg8JbY=
X-Received: by 2002:a17:906:c105:b0:a7a:acae:3425 with SMTP id
 a640c23a62f3a-a83928a9967mr617064966b.14.1724071280951; Mon, 19 Aug 2024
 05:41:20 -0700 (PDT)
MIME-Version: 1.0
References: <CAG16vQVe44WT2cK8g=KEqVT6qjtFPcfd2WpdNEunCM4UugKNew@mail.gmail.com>
In-Reply-To: <CAG16vQVe44WT2cK8g=KEqVT6qjtFPcfd2WpdNEunCM4UugKNew@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 19 Aug 2024 14:41:09 +0200
Message-ID: <CAFOi1A7Bhwi49xrpegC29dMGq2ya1XeLuzhCJWWNgMqSMKtbWQ@mail.gmail.com>
To: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Message-ID-Hash: 4NLUEPDVTC66K3XAIGXI2XGLTCXQ2KT5
X-Message-ID-Hash: 4NLUEPDVTC66K3XAIGXI2XGLTCXQ2KT5
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Rfnoc loopback in uhd 4.6
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4NLUEPDVTC66K3XAIGXI2XGLTCXQ2KT5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5499654319403942199=="

--===============5499654319403942199==
Content-Type: multipart/alternative; boundary="00000000000044de47062008a0cf"

--00000000000044de47062008a0cf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

If you don't need GNU Radio, you can run rfnoc_radio_loopback, which is an
example shipped with UHD.

--M

On Wed, Jul 31, 2024 at 1:01=E2=80=AFPM Maria Mu=C3=B1oz <mamuki92@gmail.co=
m> wrote:

> Hi,
>
> I'm trying to run a gnuradio graph with Rx to Tx rfnoc radios in uhd 4.6
> new installation, but I'm having the following error: RuntimeError:
> RfnocError: Adding edge without disabling is_forward_edge will lead to
> unresolvable graph!
>
> In UHD 4.0, I used to install gr-ettus (commit:
> 865f7d9fbe4faa48557f4e4342db09471c02673f ) applying the rfnoc loopback
> path (
> https://lists.ettus.com/empathy/thread/WEJHUNGCHZ4SUGEEG4IH25T6T2EC35OW?h=
ash=3DWEJHUNGCHZ4SUGEEG4IH25T6T2EC35OW#WEJHUNGCHZ4SUGEEG4IH25T6T2EC35OW)
> and the rfnoc_graph block appears with skip_propagation option to be
> enabled in rfnoc loopback.
> If I install gr-ettus on its master branch, this option does not appear
> and I can't apply the patch.
> If I try to move to the commit I mentioned, the gr-ettus compilation fail=
s
> because the rfnoc_graph block in UHD does not have the
> set_streamer_adapter_id.
>
> [ 66%] Building CXX object
> swig/CMakeFiles/ettus_swig.dir/CMakeFiles/ettus_swig.dir/ettus_swigPYTHON=
_wrap.cxx.o
>  error: =E2=80=98class gr::ettus::rfnoc_graph=E2=80=99 has no member name=
d
> =E2=80=98set_streamer_adapter_id=E2=80=99
> 19842 |       (arg1)->set_streamer_adapter_id((std::string const
> &)*arg2,arg3,arg4);
>
> How can I do the rfnoc loopback with the UHD 4.6 version then?
>
> Kind Regards,
> Maria
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000044de47062008a0cf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>If you don&#39;t need GNU Radio, you can run rfnoc_ra=
dio_loopback, which is an example shipped with UHD.</div><div><br></div><di=
v>--M<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Jul 31, 2024 at 1:01=E2=80=AFPM Maria Mu=C3=B1oz &l=
t;<a href=3D"mailto:mamuki92@gmail.com">mamuki92@gmail.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
Hi,<div><br></div><div>I&#39;m trying to run a gnuradio graph with Rx to Tx=
 rfnoc radios in uhd 4.6 new installation, but I&#39;m having the following=
 error:=C2=A0RuntimeError: RfnocError: Adding edge without disabling is_for=
ward_edge will lead to unresolvable graph!</div><div><br></div><div>In UHD =
4.0, I used to install gr-ettus (commit:<span style=3D"background-color:rgb=
a(0,0,0,0);color:rgb(0,0,0);font-family:WordVisi_MSFontService,&quot;Courie=
r New&quot;,&quot;Courier New_EmbeddedFont&quot;,&quot;Courier New_MSFontSe=
rvice&quot;,monospace;font-size:14px;font-variant-ligatures:none;font-weigh=
t:700">865f7d9fbe4faa48557f4e4342db09471c02673f</span>=C2=A0) applying the =
rfnoc loopback path (<a href=3D"https://lists.ettus.com/empathy/thread/WEJH=
UNGCHZ4SUGEEG4IH25T6T2EC35OW?hash=3DWEJHUNGCHZ4SUGEEG4IH25T6T2EC35OW#WEJHUN=
GCHZ4SUGEEG4IH25T6T2EC35OW" target=3D"_blank">https://lists.ettus.com/empat=
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
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000044de47062008a0cf--

--===============5499654319403942199==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5499654319403942199==--
