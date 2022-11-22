Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D58FE634367
	for <lists+usrp-users@lfdr.de>; Tue, 22 Nov 2022 19:14:16 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EDDC5384281
	for <lists+usrp-users@lfdr.de>; Tue, 22 Nov 2022 13:14:14 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1669140854; bh=oKCwc1WDIcD68IyJe1IwowvITIXr1j5GirnhuajnVlE=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=wgjOk2gMIWx+XATISyFCguZf8YuzStSeJX+diZ3GhxVhwPuTbs1YHEpfOfz5ZFRs4
	 HiZOTEBDDeCcdwiT57IToh6PVV2vBzXtqE4a+VeqZbYG9F6YEuAer0Z3CKmkY9qZC2
	 B9e5sXa+sPi+H8uLvs/v2snkcL0Gvo0I/fHalXrjuDEOh0NvsR9AxxgHu9Z3IPDEQo
	 8KGmhke25uvIH6hD8DDZ9irYkNMtPpN3GToo//Y/7dvAQATYrIG2uogHsBuuZjd1Bp
	 5v7ezYq4ti9et0xak/LSAU8pgJ3wdcu1cEi0q5LxYNRjE+AfNs9DBCuv+iT7IxSgbv
	 X6d+H6ac9jP9g==
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by mm2.emwd.com (Postfix) with ESMTPS id A2C3B38426F
	for <usrp-users@lists.ettus.com>; Tue, 22 Nov 2022 13:14:07 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="LdXjWRus";
	dkim-atps=neutral
Received: by mail-ej1-f51.google.com with SMTP id n12so37595014eja.11
        for <usrp-users@lists.ettus.com>; Tue, 22 Nov 2022 10:14:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=XMXtqIVevC6umVaFN8K/ZfkctldjWTBpxLSm7YREuuA=;
        b=LdXjWRusUF0cqRVhftGQZo9PkcE4eMndTX6t+hg+d7eg6WTp8lPLFEp5z0fojd2pwJ
         uwmZqRRQ26dHt5Efvth6s1n3swHxq6PoGkkYHYAoLD4LoW5+PG5dti6Jxob2jYq7FLG5
         rdZb2IQqVf3Wio+zRASQ7Kzyi2E3HYALR2/pjvR92E2Lq288fys1qE94rpGChrye3Cdg
         ceow4pvpd3Y480qbLT86nkJvcDRK+EA8I2sMZJp461gr5kXEA5A583jcNozSm9G3AwYe
         C4PQPcf+DmC5bpISsexPWBYfDgpXUSz2vvoSbSXce+FPhNsBMbB4sqlL3q3HWTCTkcUg
         vquQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XMXtqIVevC6umVaFN8K/ZfkctldjWTBpxLSm7YREuuA=;
        b=TjyqFd5KhllJpHCZSlfwLEoEarsRf2QOC9xgHWjDGdMVkXc7my+xLT/ZxuongDXWxN
         BzFtmzj6E01gd5f/nf/Sc2qPxpVVcNK/8HTD07Bc+O9nhDA0heR2bk35TEenVrX60tcY
         Epu29Gk0IJPZVB7RjIPy4GspBQNzhAaWsL0JKXmKkedV7qCfxYcCKlCh/EuhNQSyuvwl
         AsFI0qqOWN5Pe8tqgack7jV0Evr5a+67zdElDB9bqGEdjhf14kgS9qnIvdnrajmgs2qV
         OVP7H1JlJ4ycKSpLVlbuarS01b6Bv7j7iKxwbmdCrFH2GnqpItVEOmaw1UfNPUhL+m3Z
         n0Uw==
X-Gm-Message-State: ANoB5plLgbgUOMWUU8FumDty10NVyh4sMi2eL2M6x/gcJUeRmtec/XYU
	Sp5CCZ4iJrVjUl8XsFMjGfa7SWxLafFGUZOk51+Tm3efBDrF7Q==
X-Google-Smtp-Source: AA0mqf7lNrYdtgsVXjPoW8Jvok33gCyj5S1NlgUOhfkaV+jJWVwBmULPnR5NijUdQXuW6Pjg4bqx2qPe3NXEah+6RMQ=
X-Received: by 2002:a17:906:6945:b0:78d:48fa:8038 with SMTP id
 c5-20020a170906694500b0078d48fa8038mr21152623ejs.309.1669140846162; Tue, 22
 Nov 2022 10:14:06 -0800 (PST)
MIME-Version: 1.0
References: <yItRTPT8Vwa1G7JrBJNOxLeuXNtI6GG0INb5hLN6p0U@lists.ettus.com>
In-Reply-To: <yItRTPT8Vwa1G7JrBJNOxLeuXNtI6GG0INb5hLN6p0U@lists.ettus.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Tue, 22 Nov 2022 13:13:54 -0500
Message-ID: <CAB__hTS970_7j5KaH5rqfCdBeLs5HzJCpWj8R87+52SVC6a1aw@mail.gmail.com>
To: ri28856@mit.edu
Message-ID-Hash: FRQDFPXEHNQEYOGT2LG7UWR5YQJMYDSF
X-Message-ID-Hash: FRQDFPXEHNQEYOGT2LG7UWR5YQJMYDSF
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Accessing DDC block control in mutli_usrp application
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FRQDFPXEHNQEYOGT2LG7UWR5YQJMYDSF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5657285953491644630=="

--===============5657285953491644630==
Content-Type: multipart/alternative; boundary="0000000000003823db05ee132365"

--0000000000003823db05ee132365
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

If I understand correctly, the problem is that multi_usrp_rfnoc.cpp uses
some non-API functionality (this is kind of a sore point with me because it
seems to me that if a function is needed for the implementation of
multi_usrp, then by definition it is also needed by any user of the rfnoc
API).  My own version of "rfnoc_usrp" that I build as an OOT object uses
the following "make" function. I'm not sure if this helpful for your issue
or not.  I used the Ettus code as an example and then stripped out the
dependence on non-API functions.

nd::rfnoc_usrp::sptr nd::rfnoc_usrp::make(const uhd::device_addr_t&
dev_addr)
{
UHD_LOGGER_TRACE("RFNOC_USRP")
<< "nd::rfnoc_usrp::make with args " << dev_addr.to_pp_string();
auto graph =3D uhd::rfnoc::rfnoc_graph::make(dev_addr);
return std::make_shared<rfnoc_usrp_impl>(graph, dev_addr);
}

On Mon, Nov 21, 2022 at 10:21 PM <ri28856@mit.edu> wrote:

> Thank your for the reply, Rob, this appears to be exactly what I was
> looking for. I have spent a little while attempting to replicate the
> factory function at the bottom of multi_usrp.cpp that uses what looks lik=
e
> the make_rfnoc_device from multi_usrp_rfnoc.cpp. I can=E2=80=99t seem to =
figure out
> what I need to include to actually build this. Any pointers would be
> appreciated!
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000003823db05ee132365
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">If I understand correctly, the problem is that multi_usrp_=
rfnoc.cpp uses some non-API functionality (this is kind of a sore point wit=
h me because it seems to me that if a function is needed for the implementa=
tion of multi_usrp, then by definition=C2=A0it is also needed by any user o=
f the rfnoc API).=C2=A0 My own version of &quot;rfnoc_usrp&quot; that I bui=
ld as an OOT object uses the following &quot;make&quot; function. I&#39;m n=
ot sure if this helpful for your issue or not.=C2=A0 I used the Ettus code =
as an example and then stripped out the dependence on non-API functions.<di=
v><br></div><div>nd::rfnoc_usrp::sptr nd::rfnoc_usrp::make(const uhd::devic=
e_addr_t&amp; dev_addr)<br>{<br>	UHD_LOGGER_TRACE(&quot;RFNOC_USRP&quot;) <=
br>	&lt;&lt; &quot;nd::rfnoc_usrp::make with args &quot; &lt;&lt; dev_addr.=
to_pp_string();<br>	auto graph =3D uhd::rfnoc::rfnoc_graph::make(dev_addr);=
<br>	return std::make_shared&lt;rfnoc_usrp_impl&gt;(graph, dev_addr);<br>}<=
br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Mon, Nov 21, 2022 at 10:21 PM &lt;<a href=3D"mailto:ri28856@mit=
.edu">ri28856@mit.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><p>Thank your for the reply, Rob, this appears to be e=
xactly what I was looking for. I have spent a little while attempting to re=
plicate the factory function at the bottom of multi_usrp.cpp that uses what=
 looks like the make_rfnoc_device from multi_usrp_rfnoc.cpp. I can=E2=80=99=
t seem to figure out what I need to include to actually build this. Any poi=
nters would be appreciated!</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000003823db05ee132365--

--===============5657285953491644630==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5657285953491644630==--
