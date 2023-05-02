Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA576F498E
	for <lists+usrp-users@lfdr.de>; Tue,  2 May 2023 20:16:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CFF6B384541
	for <lists+usrp-users@lfdr.de>; Tue,  2 May 2023 14:16:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683051377; bh=5NWuGoqJXvxl3NVpD+QHHxFk+YvgZnY7AVujVP96Cyg=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Mz76a2ASUB/RPWDAS70U1QNjHUbkY78Tc14r5T6/u8bsERuBQmrFMtF/49Q5E3moB
	 PfvKG5t/HBG/srNUf47EglGKbBm59HCjypA4yW5NTM+5hNyyYM2cz/660sLHQVANqN
	 Hpih/Ois2Y+5SGZ7rukA0j7uelCLylfVMh8gYErK6xXjEvenXLq78mYT5wchmNzv6p
	 OOKJJfcTmswMt6KbE9hSHUQeQb/RIMXe7LfhGH6IK0C6H7htHYl1yzeFeleD4gMHPc
	 cwlY+O0UvwmyCFGx1/qTQC5T3tAzXU1F6OmyychP2Dj8hLH46gXHgFZF4hdED47uXI
	 iwy72V4RHTbIQ==
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	by mm2.emwd.com (Postfix) with ESMTPS id B04CC38099E
	for <usrp-users@lists.ettus.com>; Tue,  2 May 2023 14:15:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Y3GnaChE";
	dkim-atps=neutral
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-95316faa3a8so832543366b.2
        for <usrp-users@lists.ettus.com>; Tue, 02 May 2023 11:15:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683051356; x=1685643356;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=UdQ2C9eK80OPxrWQ3EXQR355JEe6aZZphSBzUqgibho=;
        b=Y3GnaChEehFXOiRDpTKtWtjIPoUswkAeognWas0oiZ9bErFT5Ki/TRViiayHokFLfe
         L9I36qpqrOSGBpWaC8+LV4hRB3ViuPEYCWur22S3abARC9TmwuuOR5WKlomZSqXLXytM
         3IqJ28Ciypu52MTRCDH8ZD/6MihyRdrI+M09xRMI//dhOf6RKmzAPfRpOja0T7CfHFoh
         P7o30Y94jEJltd2VLj1hoee5uY6NVFfOhXQVPeGIV+aMBdnG1pG1lBIEOV18gvVovXqy
         woDHxuO4NWRw5Y2oNpsHlcujYF6AY1clHN30WbDgZoSHHaE+EmuuhPZN/pCiAoAis0Aq
         3vBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683051356; x=1685643356;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UdQ2C9eK80OPxrWQ3EXQR355JEe6aZZphSBzUqgibho=;
        b=H9BX7Z47P5w9jM35HyVRn1+J3vU28R9U92lov+YOgtJmQhE1VVmwupdmr0unG4SWTV
         OdFftWvt4AIAoAt26euXgfmpSzk0sP08Io3pLxaa5kWtXsP/LAQZHH4UNbEX0GchlC1/
         yhtYP3bAY80k8RbFHBTbNhuyNQRGiqg+xjgJer7uT+i8jonRLGNooemw2pSWh0wQoN85
         P1DXhmbcG4k/E92E9Ipg8wqdTFTWktk/iSHqLcjwCU0PahhfSDnqKadQ2eJEGKTOb+XD
         kyPEsEIkoVyR0y+c0eygSxqDswJfE4wq7FqCgtXgdBhGu+JGEEaKe3XL5KfzGU1JicDA
         b2bg==
X-Gm-Message-State: AC+VfDwtLQM7YtvM9bphl+eAuRYpYYxjxGllrityfB6Yt4kiLHGZZl7P
	Oc3+4CpzC1UWGulnfqOUvTvXQUfJ1dDobwoXgSRwWzEnzA8=
X-Google-Smtp-Source: ACHHUZ6M4suw4IWEwWebhilFMiHLMoCHyO0BVPHF4P6Vcwdde2JJBjqb12QknIdt//gqnwpPWnGK1Ed2LCPxzL1OFoU=
X-Received: by 2002:a17:907:5c9:b0:94f:81c:725e with SMTP id
 wg9-20020a17090705c900b0094f081c725emr702006ejb.59.1683051356300; Tue, 02 May
 2023 11:15:56 -0700 (PDT)
MIME-Version: 1.0
References: <2stHtyiK3DpoGfxBlzfkJuezZUBR4yFYndPs5yhHnk@lists.ettus.com>
In-Reply-To: <2stHtyiK3DpoGfxBlzfkJuezZUBR4yFYndPs5yhHnk@lists.ettus.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Tue, 2 May 2023 14:15:45 -0400
Message-ID: <CAEXYVK4Ts0dGUfgAs5Js-iozwK5EUS_gqa-KOXuM9SDORYTQ7w@mail.gmail.com>
To: ri28856@mit.edu
Message-ID-Hash: ADPNQGI3PHXEZA3M53H36EOQJQTXP7OM
X-Message-ID-Hash: ADPNQGI3PHXEZA3M53H36EOQJQTXP7OM
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Tail of every transmit trimmed
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ADPNQGI3PHXEZA3M53H36EOQJQTXP7OM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3742620762734659985=="

--===============3742620762734659985==
Content-Type: multipart/alternative; boundary="0000000000003b28ef05fab9eef5"

--0000000000003b28ef05fab9eef5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 2, 2023 at 2:04=E2=80=AFPM <ri28856@mit.edu> wrote:

> What is the sample rate of your transmitted samples?  If it isn't 200 Msp=
s
> for the X310, then you are using the DUC.
>
> I use a couple different sample rates. The plots I showed earlier were
> taken at 25 MSPs.
>

Try interpolating on the host to 200 Msps and see how things go.

Interpolating by 8x goes through the 3 halfband filters.  Note the halfband
filters have 0's in between each coefficient.


> Not adding 0's to the end of a burst which you intend to be interpolated
> is
> problematic in general, since you won't be flushing the FIR filters of
> their current state.  Remember there is no automatic zero stuffing to pus=
h
> the last of the data through.
>
> What=E2=80=99s the point of the start/end burst flags then? In theory UHD=
 should
> know the number of taps on the DUC/DDC for a given sample rate and be abl=
e
> to push zeros for me. How do I know how many zeroes I need to pad? I=E2=
=80=99ve
> apparently empirically determined it, but is there documentation somewher=
e?
>

The source code is your best bet:

  https://github.com/EttusResearch/uhd/tree/master/fpga/usrp3

The DUC can be seen here:


https://github.com/EttusResearch/uhd/tree/master/fpga/usrp3/lib/rfnoc/block=
s/rfnoc_block_duc

Brian

--0000000000003b28ef05fab9eef5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, May 2, 2023 at 2:04=E2=80=AFPM &l=
t;<a href=3D"mailto:ri28856@mit.edu">ri28856@mit.edu</a>&gt; wrote:<br></di=
v><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><blockquote><p>What is the sample rate of your transmitted samples?=C2=
=A0 If it isn&#39;t 200 Msps <br>for the X310, then you are using the DUC.<=
/p></blockquote><p>I use a couple different sample rates. The plots I showe=
d earlier were taken at 25 MSPs.</p></blockquote><div><br></div><div>Try in=
terpolating on the host to 200 Msps and see how things go.</div><div><br></=
div><div>Interpolating by 8x goes through the 3 halfband filters.=C2=A0 Not=
e the halfband filters have 0&#39;s in between=C2=A0each coefficient.</div>=
<div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p> </p>=
<blockquote><p>Not adding 0&#39;s to the end of a burst which you intend to=
 be interpolated is <br>problematic in general, since you won&#39;t be flus=
hing the FIR filters of <br>their current state.=C2=A0 Remember there is no=
 automatic zero stuffing to push <br>the last of the data through.</p></blo=
ckquote><p>What=E2=80=99s the point of the start/end burst flags then? In t=
heory UHD should know the number of taps on the DUC/DDC for a given sample =
rate and be able to push zeros for me. How do I know how many zeroes I need=
 to pad? I=E2=80=99ve apparently empirically determined it, but is there do=
cumentation somewhere?</p></blockquote><div><br></div><div>The source code =
is your best bet:</div><div><br></div><div>=C2=A0=C2=A0<a href=3D"https://g=
ithub.com/EttusResearch/uhd/tree/master/fpga/usrp3">https://github.com/Ettu=
sResearch/uhd/tree/master/fpga/usrp3</a></div><div><br></div><div>The DUC c=
an be seen here:</div><div><br></div><div>=C2=A0=C2=A0<a href=3D"https://gi=
thub.com/EttusResearch/uhd/tree/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_bl=
ock_duc">https://github.com/EttusResearch/uhd/tree/master/fpga/usrp3/lib/rf=
noc/blocks/rfnoc_block_duc</a></div><div><br></div><div>Brian</div></div></=
div>

--0000000000003b28ef05fab9eef5--

--===============3742620762734659985==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3742620762734659985==--
