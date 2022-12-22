Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B5506544C0
	for <lists+usrp-users@lfdr.de>; Thu, 22 Dec 2022 17:03:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1AEE73818AF
	for <lists+usrp-users@lfdr.de>; Thu, 22 Dec 2022 11:03:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1671725006; bh=tKZakd+nWfXGuFuF8CsGSifiCjyLIUIEyR7SU19sgEI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=nJIfswntvd3KWxyv7kBfjR7m7zrCmtmd+SxSD+8yiCgI1Oou3eYukp/vkfOE2tOeD
	 e5zgISKFmUSJ7FDq2l1B7duDZYF/7GMKFcmEJiaVBHDhrseVb76Zj8HicQGj4TM3tW
	 0MxIdf3UtBOt3l7Jv96ic1vNhy+ug2glOvRB2w+KS2LW22V1S8Izk9NGIOcuJG2eHT
	 HXDTeCxwzsh5n5d6BQJONfIeyiEOhnFI4hrSQMUuCWxVDqxNwSHZlGPwu38oEOqjJ+
	 1Msl9RKy1JU5nh+aLBUelLeOapbTj1Q+lgxbUTB57H5k/dZUFs0O/42VB9IP+4m5CJ
	 iC0cNpqIbiZ6g==
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 44362380AF8
	for <usrp-users@lists.ettus.com>; Thu, 22 Dec 2022 11:03:04 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="MbQC7nyO";
	dkim-atps=neutral
Received: by mail-ej1-f43.google.com with SMTP id kw15so5902111ejc.10
        for <usrp-users@lists.ettus.com>; Thu, 22 Dec 2022 08:03:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/EdbC9jeCPc1QDrgJAvs7dHdJPvebu2YA96qFmRRP7s=;
        b=MbQC7nyO780NSe74MECddqvUR2Xxcjgu6QVRlLV3nLjonfQbhsAk0DsrAAbYXMUv7b
         Tvr/CFukz+SIasT/uukT0l2R1FDhhDpaoxkIijytVh3gEV6gLtuMChR3tH3gEwWrt9Za
         v6MMDwRWROMDmY4hDqmH41nVDSzJkxvT7pFydFt84fE0XmmahRbvaRTIqOxivAS1IotZ
         lI5fE+sKrMPszvZ91eC0Jnm6agTbvKFV41CiZDxqBIeRGCRtIQUIRdrEKTrjGi55nCbM
         0PJSFbhmtVNMzjvOhOWUi5HQBv6FJdwJDcOnhTnWQmWh0eJWE/5+ph4xX+OVsrhq6Xib
         60xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/EdbC9jeCPc1QDrgJAvs7dHdJPvebu2YA96qFmRRP7s=;
        b=Ii0y4+W6phKqxWVg7JvpqgRdHbmn3XyKotTIymxtgU37Ff6b/YmYs9bNCXpn7l6aBB
         aVdCgM5NuIsXOjV0DY5f9NxgZLEI9p0h052TWfI/qIXUeqhkIecmcTUC8YW05YO68bBf
         0FCsBnzbljhIwfwO5UORlBcEBER83WLukl3vSalODxblR+pRijV4hGhon1ScOehijN2r
         2kRmaZpeHf30cuVpZiPkMuKqA365D2mfmlrlbNMqFmd8lv6FFXeldqr+z3Wg6l6gGDk/
         /vETOjdCPA7Qs647T72aGbwvBVPI9Dn9EZpVkC/kiLaUEog7Q2M2f2JqfOKwCOBkAM8u
         6R+A==
X-Gm-Message-State: AFqh2kqtXosnB/RiiH/oSg1vVEt542DuEcnKW892j8gFnOlFnA8nqEkn
	pPmNSDscovgDCjRyEei42QlKBz7dihsgXWzN52fsGA==
X-Google-Smtp-Source: AMrXdXu6qQDv1CT+q/HqQvbySpjb4APEBZhExR3QM99Y/uv0rxK8yoDDzM9UW8sxh/jEHmbbIL/N4ab2FXXOTHz7bEo=
X-Received: by 2002:a17:906:ca0f:b0:7c1:481d:33ef with SMTP id
 jt15-20020a170906ca0f00b007c1481d33efmr651925ejb.204.1671724982909; Thu, 22
 Dec 2022 08:03:02 -0800 (PST)
MIME-Version: 1.0
References: <CAEXYVK571_PVvwKfZ7Cp_JK_upp88bKj8X1riV+FTMZ0naSY6Q@mail.gmail.com>
In-Reply-To: <CAEXYVK571_PVvwKfZ7Cp_JK_upp88bKj8X1riV+FTMZ0naSY6Q@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Thu, 22 Dec 2022 11:02:51 -0500
Message-ID: <CAB__hTSWsQDwOvkQSmgi+5xJSSNeon44KiNBMwxF65bNwHbFsg@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID-Hash: KH7DEQ5TGPYV3CWWUBT5PAVY7IQ3CVIN
X-Message-ID-Hash: KH7DEQ5TGPYV3CWWUBT5PAVY7IQ3CVIN
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC Block Controller with Fractional Sample Rates
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KH7DEQ5TGPYV3CWWUBT5PAVY7IQ3CVIN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7188618831322611857=="

--===============7188618831322611857==
Content-Type: multipart/alternative; boundary="000000000000c5460405f06ccda7"

--000000000000c5460405f06ccda7
Content-Type: text/plain; charset="UTF-8"

Hi Brian,
The DDC has an extra variable, decim, which makes it a little more
complicated, but I think you just need to have input and output rate
resolvers such that if the input rate is set (perhaps property propagation
from the rx radio), then the output rate will get properly resolved. And,
the opposite case if the output rate is set (perhaps property propagation
from the tx radio), then the input rate will get properly set.

BTW, I looked at another rate-changing Ettus example (keep one in N) and it
doesn't even worry about it.
Rob

On Mon, Dec 19, 2022 at 1:51 PM Brian Padalino <bpadalino@gmail.com> wrote:

> I am building some blocks that have some fractional rates for filtering,
> and I am trying to make sure I convey the fractional rates correctly on the
> controller block side.
>
> I am looking at the ddc_block_control.cpp as an example, but it has a few
> different functions:
>
>   - get/set_input_rate
>   - get/set_output_rate
>
> ... but those seem to rely on a property called _samp_rate_in which is
> added in the private method _register_props() which also seems to add new
> resolvers.
>
> In other words, this is pretty complicated and I am unsure if I really
> need this for a static fractional rate.
>
> Is there any guidance on the UHD block controller side for an RFNoC block
> for fixed fractional rate changes?
>
> Thanks,
> Brian
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000c5460405f06ccda7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Brian,<div>The DDC has an extra variable, decim, which =
makes it a little more complicated, but I think you just need to have input=
 and output rate resolvers such that if the input rate is set (perhaps prop=
erty propagation from the rx radio), then the output rate will get properly=
 resolved. And, the opposite case if the output rate is set (perhaps proper=
ty propagation from the tx radio), then the input rate will get properly se=
t.=C2=A0=C2=A0</div><div><br></div><div>BTW, I looked at another rate-chang=
ing Ettus example (keep one in N) and it doesn&#39;t even worry about it.</=
div><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Mon, Dec 19, 2022 at 1:51 PM Brian Padalino &lt;<a hre=
f=3D"mailto:bpadalino@gmail.com">bpadalino@gmail.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">I am b=
uilding some blocks that have some fractional rates for filtering, and I am=
 trying to make sure I convey the fractional rates correctly on the control=
ler block side.<div><br></div><div>I am looking at the ddc_block_control.cp=
p as an example, but it has a few different functions:</div><div><br></div>=
<div>=C2=A0 - get/set_input_rate</div><div>=C2=A0 - get/set_output_rate</di=
v><div><br></div><div>... but those seem to rely on a property called _samp=
_rate_in which is added in the private method _register_props() which also =
seems to add new resolvers.</div><div><br></div><div>In other words, this i=
s pretty complicated and I am unsure if I really need this for a static fra=
ctional rate.</div><div><br></div><div>Is there any guidance on the UHD blo=
ck controller side for an RFNoC block for fixed fractional rate changes?</d=
iv><div><br></div><div>Thanks,</div><div>Brian</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000c5460405f06ccda7--

--===============7188618831322611857==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7188618831322611857==--
