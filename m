Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E5EEA783924
	for <lists+usrp-users@lfdr.de>; Tue, 22 Aug 2023 07:15:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EE6CF384A6B
	for <lists+usrp-users@lfdr.de>; Tue, 22 Aug 2023 01:15:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692681340; bh=BlPhmlMUUZt2cakWq47fU7BrRRAlWEJFqsoFQJIv5OE=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=aJTCWMzI4678UhIahp0qnC73G47BfS+90CZKxFWCQW2/bfYt3WcrwaTyD0rqK2CUY
	 06MerRaWfW7eR9YsF3t8hi8xpSDeciO0tkba9M3eeD7UPkAM6nzT/CCTNwLYyOmpW4
	 GWJQaaF8JKXtvlcbWYXwanqmnysJWgFnPTvBGIaTbu369gikOOuzGPPwnxDX9aGP8D
	 +hBjlbMdlujsOnwNOAjfRbPh6CIGDF5u0msbz/v22WgkZZ2cG37u615PR9tX9bY7UV
	 SSi6R9QSYrRBUT5Keau8VJchcfvotkX7zwq4WMHCitW2d6aV3weCNKdg2TMF3ihZB3
	 9x1xeOBNfrOmA==
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by mm2.emwd.com (Postfix) with ESMTPS id CD9C2384253
	for <usrp-users@lists.ettus.com>; Tue, 22 Aug 2023 01:15:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YB/Z74a5";
	dkim-atps=neutral
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-99bdeae1d0aso533270966b.1
        for <usrp-users@lists.ettus.com>; Mon, 21 Aug 2023 22:15:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692681308; x=1693286108;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tbi2EvkXPDjQn/rm/ZwhhcrsjUWtWx1E3Wt3ZYbVM9o=;
        b=YB/Z74a50m8sM2kHpyJWFglFu2Fw8RGLuw8pyeG72xrTNyTtFFQs1TDfuai5goQj0R
         BvdPSPXZSCaFLkQFPnnxHuhse2e2Qak/YpYseZgZXIYByArh3tfa3MQ3E8QFZaIjVBdB
         JpnpTP7+sHHqVFIhWX3p0ip5cAqAD4c9Of/32g7eGHcDGHt7MPfImq99MpAkZ5onDiwh
         Q+VvDFx79Dcs/2Ad0um69hDXeGuF/ZfHct5LHKi8/0NQTMfwjpk6fzhkf3Il+ViZ3A1G
         4c9lkeHQ15KL/qHIVdVDLDBzdR8uSzwvJYZTDKnHrQ5hy0Ow2ECjWdmcfzqV+2mSEWV7
         JOng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692681308; x=1693286108;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tbi2EvkXPDjQn/rm/ZwhhcrsjUWtWx1E3Wt3ZYbVM9o=;
        b=YJui/xYYfQ8zQ3pAT6FaXRB+Q7P8/nVN9T25/iTUz+Wp7TMP0itJVteQfXccLqaoP9
         Ue7fqyHlF4tFSNbID4nTkPVSLnhiMY9YOw4cCl3v6Xl+MCS3zDdAIJs7oUSx4uFftGbQ
         /uDddhX9lstJlTV7vKeAa/DeGyVK28HOKowzU4RHjguZ7opQfxmPbYxxs7X8GO2IXqIg
         kuo0Ai3sPGJ2A1DbDxjWhm565ZBxXaOPfXbkkwCml+AYcFs77jjGXU8+YRvppXQ3Ymrb
         V22foQktVXr2oOijPb9/KipJPy77VjQFPbfG3odd6inbx9aD49OMNatuHZA0Soq+xboA
         bShg==
X-Gm-Message-State: AOJu0YwL8MgWuU0VD+RqveJuO6qsCuW6ylybMvCJinTW+zEcXIs/iWs3
	3pT5uGawH77OjRMrywnwiSkMljsZ/gs0mHK7dw==
X-Google-Smtp-Source: AGHT+IFtkQl0QFXl12ozfpqzTbsi+xEmjsa8sDceQVQVnPlwKL7SS5XpaEYQWeZ0bFqEmKRgVUn04Ep0VpVJRsFHNTs=
X-Received: by 2002:a17:907:75f9:b0:99b:ed44:1a79 with SMTP id
 jz25-20020a17090775f900b0099bed441a79mr7092174ejc.3.1692681308371; Mon, 21
 Aug 2023 22:15:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3PtAdQH3Ujd1X_rMwxAxL1EnaK-Xp-e=Z9ZRxjV7kKT3+A@mail.gmail.com>
In-Reply-To: <CAA=S3PtAdQH3Ujd1X_rMwxAxL1EnaK-Xp-e=Z9ZRxjV7kKT3+A@mail.gmail.com>
From: =?UTF-8?B?WWFzaXIgw5Z6w6dhbMSxaw==?= <simultaneous11@gmail.com>
Date: Tue, 22 Aug 2023 08:14:57 +0300
Message-ID: <CALooG3_i7y+2=FDf_tX1sQh+LBWJpf17Zbwea=nQPOUo+Q8g8g@mail.gmail.com>
To: sp <stackprogramer@gmail.com>
Message-ID-Hash: Z45JQEVHIH2AQHLXPWUPAYLKEDV7IT4V
X-Message-ID-Hash: Z45JQEVHIH2AQHLXPWUPAYLKEDV7IT4V
X-MailFrom: simultaneous11@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: why $diplay function is not work in my custom rfnoc block but
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Z45JQEVHIH2AQHLXPWUPAYLKEDV7IT4V/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0759768731554106487=="

--===============0759768731554106487==
Content-Type: multipart/alternative; boundary="0000000000001a7d0806037c142a"

--0000000000001a7d0806037c142a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Just to be clear, you mean $display function, right? If so, I have used it
in my custom rfnoc block for simulation and it worked flawlessly. Can you
give a little more detail about your code?

sp <stackprogramer@gmail.com>, 22 A=C4=9Fu 2023 Sal, 08:01 tarihinde =C5=9F=
unu yazd=C4=B1:

> why $diplay function is not work in my custom rfnoc block but it work in
> other rfnoc blocks on usrp,
> How can solve my problem?
> I know that with rfnoc framework $diplay should be work in rfnoc blocks
> but....
> every thing is same other block only name of block is diff...
> thanks in advance
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000001a7d0806037c142a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Just to be clear, you mean $display function, right? If so=
, I have used it in my custom rfnoc block for simulation and it worked flaw=
lessly. Can you give a little more detail about your code?</div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">sp &lt;<a href=3D=
"mailto:stackprogramer@gmail.com">stackprogramer@gmail.com</a>&gt;, 22 A=C4=
=9Fu 2023 Sal, 08:01 tarihinde =C5=9Funu yazd=C4=B1:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">why $diplay function =
is not work in my custom rfnoc block but it work in other rfnoc blocks on u=
srp,<br><div>How can solve my=C2=A0problem?</div><div>I know that with rfno=
c framework $diplay should be work in rfnoc blocks but....</div><div>every =
thing is same other block only name of block is diff...</div><div>thanks in=
 advance=C2=A0<br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000001a7d0806037c142a--

--===============0759768731554106487==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0759768731554106487==--
