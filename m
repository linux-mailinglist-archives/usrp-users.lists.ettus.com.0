Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 14687AFFB9B
	for <lists+usrp-users@lfdr.de>; Thu, 10 Jul 2025 10:03:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F214E38631D
	for <lists+usrp-users@lfdr.de>; Thu, 10 Jul 2025 04:03:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1752134589; bh=ijmvs++01RxskhXV81P7sxW73H73ktxCr3u2Ssyakww=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=XC0+jxkxQkU6VcuNK1VsE0Qlx71BgcTEMxijw/N9PmFr6+EXtmfvdPKIaNw5TIvCd
	 a6oE9GJdjXURrafLVK6pDjps0XXpei8wLYkJkGmor625168H7T38wFTFCpLnrE7FB3
	 +PEG5Z0+r6HBjzRFQODsndND2fRb3BsUYOEnxtSQvQNf4qyj8qJ0ApfTthoMhU6gmJ
	 zJhwZmTSiWvJW4FPznonJBysf4xSZcjik+mttjFZn8JPP6MGBiwWj/fHoRNOgMBl96
	 HOpEoaGDJ+75NB9xNTRSimyF5ADobkhXy7YlGE/BmlYHcTqOeQXYGSTdIFWxzDzeca
	 W/kAlJkVXVcYw==
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by mm2.emwd.com (Postfix) with ESMTPS id DB4F0385F6A
	for <usrp-users@lists.ettus.com>; Thu, 10 Jul 2025 04:02:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="rLQz3+jV";
	dkim-atps=neutral
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-607cc1a2bd8so1025196a12.2
        for <usrp-users@lists.ettus.com>; Thu, 10 Jul 2025 01:02:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1752134566; x=1752739366; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5q//DAGt1O9g00qPcAWk0tM/giGtpJ5ethc5C60cnss=;
        b=rLQz3+jVAellwdmKkYa2MBICe8LAgxpPsDVqd0ZxlFVsSy/cge+U/n0HgIUfBtwXBm
         KnbDyveduFQv0hK/y9NZuAeE02XQcPJigqpRJDly1ujuWqT0PBLCSEtDc6oYePGH2ws0
         uz12rsco+ykhkatkWQi+1tJd1XFPWcoQxXaRA/lepjghl1sNzwYtQOyEhUesWu2waLDw
         ctW1mN1TZNHDWQz12xrs59pUWKCx/3ZdyelzWv+E1WycwbqMqFCOLP8/b+OpqjD0Q0L8
         3nQMq5QdGziaFvKGzypIo7d+CLj4mhbLBkNnYigQjYlBXvh2uqdctmj4TXJA1tdfsMfV
         qvuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752134566; x=1752739366;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5q//DAGt1O9g00qPcAWk0tM/giGtpJ5ethc5C60cnss=;
        b=hlwQi/bqECEp/wlUjWg4LZCgxArCOx7AQBs1V2QbBcNN2DkgSEPkeedyqiCGN1O7WM
         7R9pePfUEpZB8241GA+i9ytBVEza6aH8nd1uuFqjV7IdfJggtTfw2kVJbREwPZhFgM3e
         3RPsT6aqJXHQxfkMa5hMbJc+142g2NqndBrahIh7EyJL5Yo7+ERm0QbesnG3WPBaSTmg
         R81rKDeyedLXGbMYnoRGE7TogzAlKoBgZ+oFrkgdxdETcukK9TImbcTmVZGBmaKnnH4k
         hQ6mnKXD0N/UsNi1rhMD9tqks0GS3Q0tWX357YALfeUUHpXc2lmlWA9zG9Qx7SLUr2rA
         pY/A==
X-Gm-Message-State: AOJu0YwvtOO0GHMs/PqcnQJTHrA7nWiMl9Z/2rP6aj6ZTyDY75rtJiG+
	dZPUq4jz7Y/JLDn2frh/3oH50xacPVo3xzMQjP/4rY2ogAWVmO7QAUoSEeZi5hz7w1C49+uKg89
	8aJxhrXNwpM734Sz3sTm9xwErjsSbyZhdfA5cWRYo3aS0IAWb9MkWYW37Vg==
X-Gm-Gg: ASbGncvK2k97Du9EoRIc51VOSml/KNCs4gi/6HVs84obWgwzWy6g0vYfohX32GT+zkQ
	VXh7ujxgsZIvUE+3vDJijmrTqp9maiCwrGft0Kd67fSXHfrxxxUkKm4hWnkfNbggNetXgkbkQnZ
	d9vKFfQryeT1MJW4P6XNHGjIwDDf7+67LfflCvZulhkDeaX8MI2PdKROJrFlDQzqTVRtK6sulrH
	F8DINIEli/TiA==
X-Google-Smtp-Source: AGHT+IErPBV+SB6ndU+ou7SO+Qv5iReN6/Ie8M92uj/8oUTuDgOLHtpgzbwRtVDCBAiqa40/AIzP61u4uA9kRPfyiQU=
X-Received: by 2002:a17:907:c807:b0:ae0:d4f2:e001 with SMTP id
 a640c23a62f3a-ae6e709e1damr181710366b.43.1752134566351; Thu, 10 Jul 2025
 01:02:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK62bcSvMqnhs4x669CijOr1M22wz5QeU9NkEbmsKuUbgg@mail.gmail.com>
In-Reply-To: <CAEXYVK62bcSvMqnhs4x669CijOr1M22wz5QeU9NkEbmsKuUbgg@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 10 Jul 2025 10:02:35 +0200
X-Gm-Features: Ac12FXwMogc9Ge6UEuIt0T8KmW_u76SwK45DROzlJctk-GtyaE5PeBI5pZ1H09s
Message-ID: <CAFOi1A4PK_+FQZVUvFKypF=AyHYU0qUtKTGrmNLsx1jBbrJr9g@mail.gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: UUURKN55VGOEHWSRIYPCZEI6MACGNJEM
X-Message-ID-Hash: UUURKN55VGOEHWSRIYPCZEI6MACGNJEM
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC Asynchronous Messages
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UUURKN55VGOEHWSRIYPCZEI6MACGNJEM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8758094695963461520=="

--===============8758094695963461520==
Content-Type: multipart/alternative; boundary="0000000000006d2bd106398e9eb4"

--0000000000006d2bd106398e9eb4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This is how the radio block handles async messages (underruns, overruns,
late data):
https://github.com/EttusResearch/uhd/blob/master/host/lib/rfnoc/radio_contr=
ol_impl.cpp#L263-L305

On Tue, Jul 8, 2025 at 8:27=E2=80=AFPM Brian Padalino <bpadalino@gmail.com>=
 wrote:

> With a custom RFNoC block, are there any examples of what is required to
> receive and process asynchronous messages from the custom RFNoC block in
> the controller class?
>
> For example, in my FPGA I have some status information I want to print ou=
t
> every second. I don't want to poll it, and I'd prefer to have the FPGA ju=
st
> automatically send it off through the control port to be received
> asynchronously by my controller block.
>
> So far whenever I've tried it, I get a bad function call message printed
> out from UHD.
>
> Thanks,
> Brian
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000006d2bd106398e9eb4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This is how the radio block handles async messages (underr=
uns, overruns, late data):=C2=A0<a href=3D"https://github.com/EttusResearch=
/uhd/blob/master/host/lib/rfnoc/radio_control_impl.cpp#L263-L305">https://g=
ithub.com/EttusResearch/uhd/blob/master/host/lib/rfnoc/radio_control_impl.c=
pp#L263-L305</a></div><br><div class=3D"gmail_quote gmail_quote_container">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jul 8, 2025 at 8:27=E2=80=AFP=
M Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com">bpadalino@gmail=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div dir=3D"ltr">With a custom RFNoC block, are there any examples of w=
hat is required to receive and process asynchronous messages from the custo=
m RFNoC block in the controller class?<div><br></div><div>For example, in m=
y FPGA I have some status information I want to print out every second. I d=
on&#39;t want to poll it, and I&#39;d prefer to have the FPGA just automati=
cally send it off through the control port to be received asynchronously by=
 my controller block.</div><div><br></div><div>So far whenever=C2=A0I&#39;v=
e tried it, I get a bad function call message printed out from UHD.</div><d=
iv><br></div><div>Thanks,</div><div>Brian</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000006d2bd106398e9eb4--

--===============8758094695963461520==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8758094695963461520==--
