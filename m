Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EC1BB243A0
	for <lists+usrp-users@lfdr.de>; Wed, 13 Aug 2025 10:04:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2D7B1386636
	for <lists+usrp-users@lfdr.de>; Wed, 13 Aug 2025 04:04:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1755072248; bh=8qiWkRsiU/b6REBhYzO7Wb3l5tBKOqX72MPVER9/U6I=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=sz6Muo0ajxdftEJG2nU3xpIFIcq7YZ6Ujgw4i3IecuoMGWwXSsZbpFQ/6K6QYZSz8
	 2rMflDdHflHnUghoMASucMHCB0w/Xi4DU15cVSXWq9ntuxxiqRVN8PHkhos1m2AyNm
	 swuY4Nf5NWPDEbCExtqAHOF9pQrPACCruTsiMF7+pUWwGuFCzgzqkX2DDie3wzQT/i
	 Z+rZ7Atfhnpdz8+hSrM7Pk54tc1Vbt5iEMIMQCpKrBMcxoNynD2CmMDfnwl66ePUji
	 klgfgrgQvFAeVO03Q5tr9JieIdAwI3cnOddeMvBTP/Xa1gb+c+T/50z/ZX5S/mrD/X
	 6rvY3Jq+DmIrA==
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	by mm2.emwd.com (Postfix) with ESMTPS id A172B386624
	for <usrp-users@lists.ettus.com>; Wed, 13 Aug 2025 04:03:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="LbQG1Jou";
	dkim-atps=neutral
Received: by mail-oi1-f176.google.com with SMTP id 5614622812f47-433fa926c43so816158b6e.0
        for <usrp-users@lists.ettus.com>; Wed, 13 Aug 2025 01:03:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755072208; x=1755677008; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=aeoPDa8HOnKgLhtGh8vBUcMJi1RKGcNLrBa97HC/Zzc=;
        b=LbQG1JouGIEwBBdOTp8Kp/BS38Cs0sOUZ0nG5fhSfK5XHIyk/qX/aX9sm72o+Aty4j
         M0JPwjNf8zuMQvgxbW0kQhm6rgMZy8Fba6PU7Gf4WMgd7EIrwVvnVoqFO4elRsUMErL4
         Dg0gZ/gSfc+q/sAJ7y5J++mvJ0daLUw5ta0felXw4N0BJL/7kQ1o49R/hdeC3ESth4Sy
         AvvzVRHC3wa5YSZkDCqBCk8czrbzjWFYRdfAkE6n+QJHmWUlVIlQgGvZ8n2V23w+8y7P
         4OEqkrDj1PhMkSBu8ppBgDqYUMt/RaKOyo5zRj46NQywlD2LS1OPbH50kDbwIQqbxhyO
         tp1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755072208; x=1755677008;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aeoPDa8HOnKgLhtGh8vBUcMJi1RKGcNLrBa97HC/Zzc=;
        b=oMcegJscMe0qg03iPrua80Txj/KsbWHAf2Pe9yW4ddFZqU8b2aR91TEv5QeZ4veEIW
         C1FMhGNNMW41gzNT0svYaqiKG5YRx1uiAO+m719wbL21DEcZ4KnH5XFMKcuNvL8oB6Bm
         LE3VTmWbsz/P4cahZ40bI7ZWrcoIJZIrZBSUistjgnimxpKDi0QjsM3yjJVmdNeCDWPj
         isCS7NHiMYWh8r7dp+giwOYXE93+wCtxCSFY+n+2mHQEQP5zUOwjBs1t1p8y0RWudDYH
         XGDTLjULnCX0upudFgM9LttwMmP8ilvubHawno2Pl1ASpyJTVuoi1xNrlpBT1ArZw/Ee
         fT1w==
X-Gm-Message-State: AOJu0Ywu8MPsXYmqr+qtTR1WLKR1ZeCjVSSlAW910U7lK/BbpFQRTBrh
	dmBo59KEPySR7vKMyCVAR8WnkgiCiRo/eOVuChs7b8kSZ3K8fv04729jd+gzOAml1FxcNaFCb+O
	ZoW7hXFKda9ETKL5njUFphn/53PQf/9M=
X-Gm-Gg: ASbGncvxF4SpwdD0JCuyWPybkbPAGoXC6GloCZuC1Qc3jTfx8GRdWLioAOANF/Vh0B3
	VIX/esftjTOd0TprgklISNhNtOmCat9KAOxiuifVVjADZxgt88EjBbL9ox87uQ3IgOlexe3SVN2
	R1vEL++U3tdP2wpugaaR9cPLvCtiiQujo05q2HlaqKk0kfYKxXmmIarrMaFzP+iyv3FMX2l6wlr
	OYY3G1AHSFyKTGYIiQ=
X-Google-Smtp-Source: AGHT+IHiWru5XBDc9NzMDlc8amfTiVwAj+UorJcqznAqA5xsK4Ngijltr0YYqw8nZJPXxSk2F85Zdsm2Jh1iVGXOKak=
X-Received: by 2002:a05:6808:1b1e:b0:435:734f:9311 with SMTP id
 5614622812f47-435d4275fccmr1148772b6e.39.1755072207633; Wed, 13 Aug 2025
 01:03:27 -0700 (PDT)
MIME-Version: 1.0
References: <omY3a5sIsTP4vkVgUEI2Dmfa7xyHhbUlr0vUJscDEc@lists.ettus.com>
In-Reply-To: <omY3a5sIsTP4vkVgUEI2Dmfa7xyHhbUlr0vUJscDEc@lists.ettus.com>
From: Kelvin Lok <kelvin.lok266@gmail.com>
Date: Wed, 13 Aug 2025 16:03:10 +0800
X-Gm-Features: Ac12FXxGIruQd0Jp7SNp2EmxNF9HRX9ZV-mHP1j6Vli4vkoCpGGSNw_SZtoVfTI
Message-ID: <CACSyVY2D4W799EsE93zoXAw4SaFaqysBTZOUDSGL6EdRVZ=daA@mail.gmail.com>
To: nirkicatal1@gmail.com
Message-ID-Hash: 56UKPKOYV65J3IVH6NMWDYWBWFEP7DOP
X-Message-ID-Hash: 56UKPKOYV65J3IVH6NMWDYWBWFEP7DOP
X-MailFrom: kelvin.lok266@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Non-Stationary TDOA Behavior using PCM Signals
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/56UKPKOYV65J3IVH6NMWDYWBWFEP7DOP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2818877577149575438=="

--===============2818877577149575438==
Content-Type: multipart/alternative; boundary="0000000000007dc43d063c3a978d"

--0000000000007dc43d063c3a978d
Content-Type: text/plain; charset="UTF-8"

How long was the observation period between the initial and final
estimation?
Were the devices powered cycled, or GPSDO re-locked between each test?

On Thu, 7 Aug 2025 at 19:31, <nirkicatal1@gmail.com> wrote:

> Hi,
>
> We are observing a time difference of arrival (TDOA) variation between two
> E320 devices using PCM signals.
>
>    -
>
>    The devices receive with zero hardware delay delta to the RF inputs.
>    -
>
>    Both devices have the latest filesystem installed (UHD 4.8).
>    -
>
>    Matched filtering is applied to estimate the time of arrival of the
>    pulses.
>    -
>
>    The time of arrivals are subtracted to compute the TDOA.
>    -
>
>    Internal GPSDO PPS and 10 MHz clocks are used.
>    -
>
>    cgps reports GDOP values around 2.0 for both devices.
>    -
>
>    Multiple 60-second test runs have been conducted.
>    -
>
>    A deviation of around 150 ns in TDOA between the initial and final
>    estimations across the radios is observed.
>
> We know that the matched filtering estimation and other imperfections
> follow a stationary Gaussian distribution with a 20 ns sigma (and a
> constant mean per run). We verified this behavior on the same setup using
> two B210 devices with external Ettus-supplied GPSDOs. The B210s report
> similar GPS performance to the E320s.
>
> What could be the cause of the non-stationary behavior observed on the
> E320s?
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000007dc43d063c3a978d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">How long was the observation period between the initial an=
d final estimation?<br>Were the devices powered cycled, or GPSDO re-locked =
between each test?</div><br><div class=3D"gmail_quote gmail_quote_container=
"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 7 Aug 2025 at 19:31, &lt;<a=
 href=3D"mailto:nirkicatal1@gmail.com">nirkicatal1@gmail.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Hi,</p><p>We=
 are observing a time difference of arrival (TDOA) variation between two E3=
20 devices using PCM signals.</p><ul><li><p>The devices receive with zero h=
ardware delay delta to the RF inputs.</p></li><li><p>Both devices have the =
latest filesystem installed (UHD 4.8).</p></li><li><p>Matched filtering is =
applied to estimate the time of arrival of the pulses.</p></li><li><p>The t=
ime of arrivals are subtracted to compute the TDOA.</p></li><li><p>Internal=
 GPSDO PPS and 10 MHz clocks are used.</p></li><li><p>cgps reports GDOP val=
ues around 2.0 for both devices.</p></li><li><p>Multiple 60-second test run=
s have been conducted.</p></li><li><p>A deviation of around 150 ns in TDOA =
between the initial and final estimations across the radios is observed.</p=
></li></ul><p>We know that the matched filtering estimation and other imper=
fections follow a stationary Gaussian distribution with a 20 ns sigma (and =
a constant mean per run). We verified this behavior on the same setup using=
 two B210 devices with external Ettus-supplied GPSDOs. The B210s report sim=
ilar GPS performance to the E320s.</p><p>What could be the cause of the non=
-stationary behavior observed on the E320s?</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000007dc43d063c3a978d--

--===============2818877577149575438==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2818877577149575438==--
