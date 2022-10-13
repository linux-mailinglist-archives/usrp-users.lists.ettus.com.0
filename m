Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 277975FE307
	for <lists+usrp-users@lfdr.de>; Thu, 13 Oct 2022 22:00:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 98901383D0E
	for <lists+usrp-users@lfdr.de>; Thu, 13 Oct 2022 16:00:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1665691201; bh=5SG3Ja4C/mB/wfuZoDWIEZ+4nJy/ry5nzoFTUj9SaEE=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=VWG1JqS1aDdgRKCPLnIJaVJ797sr4n1alWwwmcODYCLVeXmwtAwwlMV43zGRx29Q0
	 Jz2p+FdGn3H9VIHxBxHI1LR3o4Vz8RL/+BNXteQSj0XbUmSHsOF+ZzUueuSXs+9ldH
	 dNSSng51Kb5w+jIP7nhpBQXeBAPavGs9Z0gAXUYYUHT7nQOfR4EU4oPKR3JOdd0HDU
	 jTimJsGLcLkJP+jfOlt3VJXK6EYlpDMvsiMp8ISmwtwVYHjBVKywBfmNBLkAV8zU4j
	 24H5AnKHioWzCHTqskMFbQg2oJmdT23TSvnGTkGm29Dqq3f/d5TskKuiSatCzIZoEC
	 MBFBYtoRN9gWA==
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 67672380097
	for <usrp-users@lists.ettus.com>; Thu, 13 Oct 2022 15:58:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="y05Ctn8Y";
	dkim-atps=neutral
Received: by mail-ej1-f51.google.com with SMTP id b2so6217553eja.6
        for <usrp-users@lists.ettus.com>; Thu, 13 Oct 2022 12:58:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=95XAcoB/0Ubz/8MxZdf8IUmY6g/FL8FhuXFZCDtiQYY=;
        b=y05Ctn8YUqR39Jzikjejre70LrnD5iotKXg9tcANwQLsjubd+WcBtlzASRkI+FGXga
         O4Db0RGwWgnBWvCA6iOfiEGEwOYKIVe9eugxOcpIQC64B0gOpTTo0TprrSOyXXnbF24G
         LaCkqR580AhCDqcMPMcH+pBECcBLyTl7Otv6zovBshBycL5Ijd9KfH0LWofTRnTYP5Nt
         eo/xK7eAR1Yc3wUyivIqaaGG5QqNu+Q/ilpFVqKtx7UkbnmC68heEkagCkjECZSvCExi
         XYHmZYP30sTlOQBWBbteNFE7mJywe8UDTjs/0W8rMRiExB6jiGAFrgjuEETV66ACN7DT
         24cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=95XAcoB/0Ubz/8MxZdf8IUmY6g/FL8FhuXFZCDtiQYY=;
        b=eCIkZwU7+ZQRLxesZvnTssJi+lliTLWp5qXhgZX8//9XV5s9sadA5syJl3jlM74YYR
         DtFbM2ha09CMYBAzN0lIMohL5Sq65R5mieDE1+p4nTek/c5KTrF+YpSZdbGuxQJRSqJA
         LmRGfQndloX86SoEkKQtVBWZPzqzRVzfl8OqpVzKw2bglFO0qntM/FASNYzBXUGMaDPu
         Hl+SSlkoywrqlIzjdCDfZyY8dp9TYVIv/CYRBBm73VXFtsGt1ZWQHm5pt+aig/zLE992
         ijIKG9tddrg1nDOWHHbJ2T/CMRS50LG0woOGX6Dg5EM3AcmLRxGnem1JfQMHoc53u6z/
         fLfw==
X-Gm-Message-State: ACrzQf1QW/fry4Qdxm3zxvgp54zEiR1PToc4VOvMgZpiOXPGOTq+sWqO
	IrZnZbi6T7uKQbRSP7a+ug3hdSbat3VOL2YtB+hGxxHmmne4Dg==
X-Google-Smtp-Source: AMsMyM4bB57IXDH+hk3ZIPP2Zw5BiOv+qm9i7yZWwqZU5/2EDsdPPmS4fALpRFBSink86XKqT9GsV4CCxdO6dNlew7E=
X-Received: by 2002:a17:906:c14f:b0:78d:105b:e57f with SMTP id
 dp15-20020a170906c14f00b0078d105be57fmr1046291ejc.672.1665691127248; Thu, 13
 Oct 2022 12:58:47 -0700 (PDT)
MIME-Version: 1.0
References: <Ozp2jPKMVfQNL1RvQRYdEeVe5r50KLApC0w3MTU@lists.ettus.com>
In-Reply-To: <Ozp2jPKMVfQNL1RvQRYdEeVe5r50KLApC0w3MTU@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 13 Oct 2022 14:58:30 -0500
Message-ID: <CAFche=jw7KwFmaQE7SWs9Ms3Bcd4+c6fpoqDdb6zbUsLv3SAJw@mail.gmail.com>
To: adri96roll@gmail.com
Message-ID-Hash: R6XL2S7RV5BJABGGW2SPHT6EC6U5BJSR
X-Message-ID-Hash: R6XL2S7RV5BJABGGW2SPHT6EC6U5BJSR
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD_IMAGE_LOADER load another .bit
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/R6XL2S7RV5BJABGGW2SPHT6EC6U5BJSR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0547661796969629819=="

--===============0547661796969629819==
Content-Type: multipart/alternative; boundary="000000000000f214bd05eaefef11"

--000000000000f214bd05eaefef11
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I'm not sure if the FPGA image didn't load, if you loaded the wrong one, or
if your block isn't working for some reason. Does the FPGA git hash
reported by uhd_usrp_probe match the one you built from? If the git hash
still shows a different one than the one you built from, then you're still
using an old FPGA image.

I think uhd_image_loader reports the file path it uses when loading, so
make sure it reports the correct file path.

If it's still not showing up, and you're sure you're running the FPGA image
you built, that could mean something is wrong in your block. Most likely a
clock or reset that's not right, which prevents it from being discovered.

Wade

On Thu, Oct 13, 2022 at 9:16 AM <adri96roll@gmail.com> wrote:

> I tried but i didn=C2=B4t work. Anyway, i have no problems loading others
> projects only with this.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000f214bd05eaefef11
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;m not sure if the FPGA image didn&#39;t load, i=
f you loaded the wrong one, or if your block isn&#39;t working for some rea=
son. Does the FPGA git hash reported by uhd_usrp_probe match the one you bu=
ilt from? If the git hash still shows a different one than the one you buil=
t from, then you&#39;re still using an old FPGA image.</div><div><br></div>=
<div>I think uhd_image_loader reports the file path it uses when loading, s=
o make sure it reports the correct file path.</div><div><br></div><div>If i=
t&#39;s still not showing up, and you&#39;re sure you&#39;re running the FP=
GA image you built, that could mean something is wrong in your block. Most =
likely a clock or reset that&#39;s not right, which prevents it from being =
discovered.</div><div><br></div><div>Wade<br></div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 13, 2022 at =
9:16 AM &lt;<a href=3D"mailto:adri96roll@gmail.com">adri96roll@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>=
I tried but i didn=C2=B4t work. Anyway, i have no problems loading others p=
rojects only with this.</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000f214bd05eaefef11--

--===============0547661796969629819==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0547661796969629819==--
