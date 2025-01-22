Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E1CA19B8E
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jan 2025 00:41:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7751B3856AA
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jan 2025 18:41:37 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1737589297; bh=/BiCOrnKnvl+L7tnVmNVLJuXN7qbSTBoTDpjTfPAgiM=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=uwVXB35H+LDdj8YGwxOF+A6QtureUqRqYswnB60zBiDXVJVW2NXIt0diLb1pZ7T8K
	 W9wmjDCTvF4kbSDbne83hBOb9wWAMxRRqCNgYVxGwXDaFy2pBx9su6WfsErmVipC2w
	 g+Y3GM66GRuu452CDB9JDfaJ7gPAxFAOijjX0x6ituLkrCrModTvomM6h3u5FnqfMM
	 dBFKsqAOjhqayLHQu/y/tiJJ2lJfKpePlbsqFSNpbMM6+fwWbszhMqJd9Ibh//Goz3
	 SuQc2eI1i0j1C6xAW1UHMprpvq6LE76D26R0WeXjzP/Vk3pGksmNKMgdQX/OMUazvO
	 h7lUd1awcrEPw==
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by mm2.emwd.com (Postfix) with ESMTPS id AFEF6385696
	for <usrp-users@lists.ettus.com>; Wed, 22 Jan 2025 18:40:56 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eZ8IarAa";
	dkim-atps=neutral
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-7bcf33f698dso22590185a.2
        for <usrp-users@lists.ettus.com>; Wed, 22 Jan 2025 15:40:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737589255; x=1738194055; darn=lists.ettus.com;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nEriRepvAB+quN8zpP9/UteWEag4ghPRTveepT+7i/A=;
        b=eZ8IarAaZNI19OPdHkzY8B/t2lMgTc+qkkcyacNOV0VJlhM5MmPjiK4Pu81aL/Ot8Y
         Y3DsKql3BRhRFLC8HUBTVBpldBukUDCiqkaM49HK8WV9tnbH7C1TDvxQIYQEeifZiI0k
         bgnt2vjB3wtNXvveEcfxnly9VS0gBr3aLbWAHMOKTYre8Yv05x7+1L51loi23E4kjhLZ
         YVZEYo6+bmWc91RGEdvaMKimGaJayClDikURS7+MV6DQGSLNAItUr+atq/6xCIMb1fiX
         HIUlIYgTPXatZ17LANtQLyKSu5w3kxjHJw9xjg2oFMHw3+7ldTaiPIr3/EzykJ0g8iNV
         PxkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737589255; x=1738194055;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nEriRepvAB+quN8zpP9/UteWEag4ghPRTveepT+7i/A=;
        b=wcmGhffycf7+MJ9McBZnKg8TlV9PRTJnG5pV4fQ9shAlROUmjXZM114k2bfBAQ5+9W
         JHeOYG40vYZh/DLqfQ9TV1BEjIluCY9L2Q3Hot7vj1CsALUHUgaSfdYWU++ylZ00RJjD
         1EFhFidwlljwih0ENnD1nayL9RcyYJQ+v+KY9z5YaG3cHubEsG2XOumsqjljaMIaEw1A
         0QTuFhZGD5OpbZFUGQdiR3Jh1qijkfNL9Kd5zZvit7iUkSWJnhCPHLKDiCsDjjq0Liel
         VPnP/TxKcjhJ4SwSdxl9gbYhMvqJQXO2v9Afbbl0+OSuhU5vjspaIOW2yGXkeXRsLi9V
         BYcA==
X-Gm-Message-State: AOJu0YxcEZ2H3dRoCpjMGVvaiA4L5kWGuPI8/ppbCqtTh/Y3YJ8xFMD2
	ZqaVRbx56L+cs6VySweHWjeafq8N0R1qFcemF4WajKtjMN7yegjBTkFXYw==
X-Gm-Gg: ASbGncuYWYK9wb3eDY3vSDiHFr3LmLIYf+Lb0fIFy3Sze8pUBUkjNuLjfifQa7Ox6Ud
	U7rewmj1aq1eGwGd1Ou8Up8ePAxuOi5zFDs0nsnrRKkA04V7ryfpsrAdqrhFNmeoSz3fIEcvEww
	o2FTC66GHk0rjl0cdT4DWIClkdfNZWt+KzzAoBxUdi26gUgCpCCYFXEKCQo3gWKMaJ8p2Bk3x0n
	+8+1E3wqS1rEdw4AZu9ouSLfo4xXuvT5rWT2Z1Nf7719aRgf1W7gkZKRG50c1e02Pfn5uG4MiAz
	lZjP
X-Google-Smtp-Source: AGHT+IHxcXiueQDAGXoivlOHixSuqy4qA1lTzzj9cQEPbbwKFOZx4xBvBcs/4wMq6YH5+8IXMuX0SA==
X-Received: by 2002:a05:620a:1923:b0:7b6:6c33:994e with SMTP id af79cd13be357-7be6321995cmr4137966485a.6.1737589255513;
        Wed, 22 Jan 2025 15:40:55 -0800 (PST)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7be614eedebsm708543985a.93.2025.01.22.15.40.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jan 2025 15:40:55 -0800 (PST)
Message-ID: <04ebb981-7d53-4623-a00b-8de12706174c@gmail.com>
Date: Wed, 22 Jan 2025 18:40:54 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAB__hTSP4LgeSaPBC_SC+dbugmX7v23jnEyv_qCUQLBANOSrig@mail.gmail.com>
 <CAB__hTRXqyUK6E-yM2P11acbgaTNkP0RbSTDwAH0-G43wNEsrQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTRXqyUK6E-yM2P11acbgaTNkP0RbSTDwAH0-G43wNEsrQ@mail.gmail.com>
Message-ID-Hash: ESNLBGUKBD3NAILRRIKRCRYJIYO3FFKS
X-Message-ID-Hash: ESNLBGUKBD3NAILRRIKRCRYJIYO3FFKS
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Neel Pandeya <neel.pandeya@ni.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Update for AN-956, OAI Ref Arch 5G ?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ESNLBGUKBD3NAILRRIKRCRYJIYO3FFKS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0505923749052300331=="

This is a multi-part message in MIME format.
--===============0505923749052300331==
Content-Type: multipart/alternative;
 boundary="------------d7hyk4UExkFkR1V4YFqThDQM"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------d7hyk4UExkFkR1V4YFqThDQM
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 22/01/2025 17:26, Rob Kossler via USRP-users wrote:
> I am wondering if there is an update in the near future for AN-956,=20
> OAI Reference Architecture for 5G and 6G Research with USRP.=C2=A0 If t=
here=20
> is anything presently in draft form, I am wondering if you would be=20
> willing to share it prior to release.=C2=A0 I am just starting to work =
with=20
> OAI software and I noticed that the Ettus application note references=20
> older versions of software (both OAI and UHD).
>
> The latest OAI software seems to simplify some of the setup. For=20
> example, perhaps Ubuntu 24.04 has built-in configurability of=20
> low-latency settings such that installation of a low-latency kernel is=20
> not needed or even recommended.=C2=A0 Additionally, the docker deployme=
nt=20
> for the OAI core network appears to be simpler from the user=20
> installation & launching perspective.
>
> Thanks.
> Rob
>
There are a few ANs that need to be updated, and I've copied Neel=20
Pandeya, who kind of "owns" the list of ANs.=C2=A0 He's on this mailing
 =C2=A0 list, but very often busy with other things...



--------------d7hyk4UExkFkR1V4YFqThDQM
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 22/01/2025 17:26, Rob Kossler via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTRXqyUK6E-yM2P11acbgaTNkP0RbSTDwAH0-G43wNEsrQ@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div class=3D"gmail_quote gmail_quote_container">
          <div dir=3D"ltr">
            <div>I am wondering if there is an update in the near future
              for AN-956, OAI Reference Architecture for 5G and 6G
              Research with USRP.=C2=A0 If there is anything presently in
              draft form, I am wondering if you would be willing to
              share it prior to release.=C2=A0 I am just starting to work
              with OAI software and I noticed that the Ettus application
              note references older versions of software (both OAI and
              UHD).=C2=A0</div>
            <div><br>
            </div>
            <div>The latest OAI software seems to simplify some of the
              setup. For example, perhaps Ubuntu 24.04 has built-in
              configurability of low-latency settings such that
              installation of a low-latency kernel is not needed or even
              recommended.=C2=A0 Additionally, the docker deployment for =
the
              OAI core network appears to be simpler from the user
              installation &amp; launching perspective.</div>
            <div><br>
            </div>
            <div>Thanks.<br>
            </div>
            <div>Rob<br>
            </div>
          </div>
        </div>
      </div>
      <br>
    </blockquote>
    There are a few ANs that need to be updated, and I've copied Neel
    Pandeya, who kind of "owns" the list of ANs.=C2=A0 He's on this maili=
ng<br>
    =C2=A0 list, but very often busy with other things...<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------d7hyk4UExkFkR1V4YFqThDQM--

--===============0505923749052300331==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0505923749052300331==--
