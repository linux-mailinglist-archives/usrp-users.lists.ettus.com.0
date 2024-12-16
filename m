Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E4849F39CA
	for <lists+usrp-users@lfdr.de>; Mon, 16 Dec 2024 20:27:45 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 43D833854F5
	for <lists+usrp-users@lfdr.de>; Mon, 16 Dec 2024 14:27:44 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1734377264; bh=FXwGjmAXfiDCRk2WP6u6npG6eV3EifBj8cwOjPflh9U=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=y61xPHWyQow5/+Z/EYIcOUzX0CpnvRq8uH5MwjEeW3uu0I9qOgCUEht8cxGJnRdvO
	 DmCMhMnIMq8JoLDjsalmnSlHPX54m29BrixrRZoGhyVUve0WWadS4Q+ICF+ZiYXVRU
	 MCIWM8h77QznNK+W7BjfXDgrpk5OZwd28VNW2XsWjVH9Ipn3G5OItNSPBjVdwajW+w
	 ZkylA/pcbKFd1zeplS73OemusFAuPxGmuXL08EsfWuWXshsh6Qp79h27olLrTGWLd5
	 4FzIrFT4zqDMBf04ynjTf/MfGVAEG1WFCBgj2FD6xaB4pP+XSdah1w4gFybTMUayaC
	 S7dMdPz+rmJNQ==
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	by mm2.emwd.com (Postfix) with ESMTPS id C9A913808B3
	for <usrp-users@lists.ettus.com>; Mon, 16 Dec 2024 14:26:47 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ed9a3knq";
	dkim-atps=neutral
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-467725245a2so45328681cf.3
        for <usrp-users@lists.ettus.com>; Mon, 16 Dec 2024 11:26:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734377207; x=1734982007; darn=lists.ettus.com;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8cx3PQSBzPaU2dZGC6U6VXDTIDIwOtE61QXAi4EkJX0=;
        b=ed9a3knqLey4KPYvdHqO75GmR2P1rKp1Qv2WaJ32RSyHgea2ZMvEiaufIst867H3A4
         dZvrUlw1IDP9zpwzMO7cGEehQqlAe7V+vQcPgg9RzgsBc3l7WBV10VKAPbfG1mcuHncg
         9a3sHwq9gWSpB2NmkN6bWNkpCvBvfftEV9eQ9krzdX23fTtzbdV+LQCpGTal/3s6YMUn
         JY6rCGkOAAx9jCLuuS+mSaM5Ev6X5jBpxgX/ZuRgkE4aKkrawKDtp9UEMY3J4qs3+fcN
         zS+KU38qNOjP67uBE+xcWie1CwwgR41YjVb4evaMPlOEn65NVm6QGjG97Ezz1ShdrG7z
         ynEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734377207; x=1734982007;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8cx3PQSBzPaU2dZGC6U6VXDTIDIwOtE61QXAi4EkJX0=;
        b=o/oM6YhHD12X5gdDHGH6J3KXMY22IS6X06TGYj4R8t4Inv66E/z5jCqYhemezGP6Di
         wSS2VDUHb2wvYiDy+johiRnOkbrJ5le1fVWZDhkkaqtuA94vLcF6cRzmvHf00A/QefqK
         gijgwfUJKEpdYYsFMxshnYU7Vn1PjbSNoVaoPZbiVjXgZLH+dJFZe2vU9qZqK0dM2iPK
         Ty9gvFsIoUoP3C0UXlulENUvtyoB+HYlezE6iwoTXcQpJ9LyibbELnEBpMx7jzDxRa1W
         ungi/O3z2hscWrK0WUhQZKfxrF7IDLNRg+jRHYPlUxDzlH8zCAkPVfE3oZrtWE3SfwBc
         +Vfg==
X-Gm-Message-State: AOJu0YyisSBE9b/618ndmwOQB8LKNPIQ7HD5aVq2yG8mV1HjIgt6PC5E
	AEIx9b4Z/ItF4xkq/bCiGm18IV/dbRmo5fWbadeCG0Lim9mrvgT3
X-Gm-Gg: ASbGnct0xMktIzQcHobtNgOjXFthRHiZwX9M7dfrajoUeaXD3oAEn5hCTAuJ6jkLSJ5
	TOTHycd+eKpQELzy/YsEWz5ymr+HBjElimHUZnZWkcnvh/nC5rhX3eHHQ6Uvwvw58j4zFgoJFx0
	yDXNyP/B83Q8x5Px3PAV5uXX8NYe0VbS8aeTJG144eVHj+avSHe0NHWBW76jOahVqlL1TC7IUHQ
	ZD1k+IrxRcuu9Bw678jc2iuM6yMkwIwnwCyj65g/r2T0TrX3+kW0lEXeQhHlNhfLpg=
X-Google-Smtp-Source: AGHT+IHGSCKBpCsm42EPafJurOjH782jQyxZlu2LeSk83OrRQPp/coBy2BXofmdNkuilrUOZJ4/B0A==
X-Received: by 2002:a05:622a:52:b0:466:b395:fe with SMTP id d75a77b69052e-467a5801b81mr214598551cf.35.1734377207060;
        Mon, 16 Dec 2024 11:26:47 -0800 (PST)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7b7048bb867sm251655685a.80.2024.12.16.11.26.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Dec 2024 11:26:46 -0800 (PST)
Message-ID: <c37f7c4c-5415-4f27-abe8-0155943f6d3b@gmail.com>
Date: Mon, 16 Dec 2024 14:26:35 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Brian Padalino <bpadalino@gmail.com>
References: <244d0fbb-2687-c74e-0b9d-e1de1122d382@novagrid.com>
 <5fbd3c1d-1ab1-f199-7419-a670665f37f4@novagrid.com>
 <c9c6714e-8ef3-48ba-8a90-25be1f6b2285@gmail.com>
 <CAEXYVK4ryoiWnLRActkNZ-E+hSBog5wt38NGVwP1cp90Qq00qA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAEXYVK4ryoiWnLRActkNZ-E+hSBog5wt38NGVwP1cp90Qq00qA@mail.gmail.com>
Message-ID-Hash: 2ZOESXQ4ENQXPLW4UGNIMGPVX4ACYFH6
X-Message-ID-Hash: 2ZOESXQ4ENQXPLW4UGNIMGPVX4ACYFH6
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Sampling channels at different rates
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2ZOESXQ4ENQXPLW4UGNIMGPVX4ACYFH6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6980821363957584549=="

This is a multi-part message in MIME format.
--===============6980821363957584549==
Content-Type: multipart/alternative;
 boundary="------------z7p0EzIlZYCnnbmKc110SKKE"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------z7p0EzIlZYCnnbmKc110SKKE
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 16/12/2024 14:24, Brian Padalino wrote:
>
>
> My guess is that you're going through another Halfband FIR filter=20
> somewhere, so there is group delay that isn't being accounted for in=20
> the digital filters.
>
> What is the lag (in samples) of the lower rate sampled signal?
>
> Brian
That was my other thought, assuming that the streams really are starting=20
at the same time--different group delay
 =C2=A0 due to the different sample rates.


--------------z7p0EzIlZYCnnbmKc110SKKE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 16/12/2024 14:24, Brian Padalino
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAEXYVK4ryoiWnLRActkNZ-E+hSBog5wt38NGVwP1cp90Qq00qA@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr"><br>
        <div class=3D"gmail_quote gmail_quote_container">
          <div><br>
          </div>
          <div>My guess is that you're going through another Halfband
            FIR filter somewhere, so there is group delay that isn't
            being accounted for in the digital filters.</div>
          <div><br>
          </div>
          <div>What is the lag (in samples) of the lower rate sampled
            signal?</div>
          <div><br>
          </div>
          <div>Brian</div>
        </div>
      </div>
    </blockquote>
    That was my other thought, assuming that the streams really are
    starting at the same time--different group delay<br>
    =C2=A0 due to the different sample rates.<br>
    <br>
    <br>
  </body>
</html>

--------------z7p0EzIlZYCnnbmKc110SKKE--

--===============6980821363957584549==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6980821363957584549==--
