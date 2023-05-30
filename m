Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A3BDD716F64
	for <lists+usrp-users@lfdr.de>; Tue, 30 May 2023 23:08:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C0EBA384855
	for <lists+usrp-users@lfdr.de>; Tue, 30 May 2023 17:08:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685480917; bh=BeD/sXiqomWDGUdR9ztnL3T87ZW/NOXXRPH4eOgztgg=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=acfnJUhtD9aLpJq+U9TWaTfkfiRlIGv+/JDWTB2F1pJFC36NpIR9NRSmLrV7IDTKR
	 ZrveSefgV8jZqKiKkyLzhKLtqgL57S2Jz83Xm9EvYgockP7Km00MOLP2zvJrR9BSnM
	 W7zveBaJo7AQcsUaW3vhuLDO7TiS3kBeDgfQsbOmUPK3Oz5j9bsl87ZaasHtkQlqnf
	 OFBRnziDjeUPA8HJh4eAZZAwfHjw6uNwZeZPkx6raxjFipuv19G97CqJjRHHBOXDj1
	 n2QnqFasWhg7jvuAQqr5oyO5rJUEzMyOWt18/uA3uGPjxnGEENWxbehGWyhmqoJe4z
	 W5fOUy734kqEw==
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 1550B38452C
	for <usrp-users@lists.ettus.com>; Tue, 30 May 2023 17:07:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GUddZqSy";
	dkim-atps=neutral
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-4f4b384c09fso5876713e87.3
        for <usrp-users@lists.ettus.com>; Tue, 30 May 2023 14:07:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685480856; x=1688072856;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=PPwXJsosDvR2GXEx1CcTJ3PbUSW4FEYVU74eekwaGmY=;
        b=GUddZqSyjXTv1rVHVS6Q8W9tThQ1TP6dWSmZ/W+Jm+znXcbJrexrjyS9dX+ayAWcIF
         XfuXO99gOKPNTNp378V6FkozZ9wjadUPwc8XoLwd2+of7xiuqPt0XcYbETKNzd1KNzrZ
         etbsPssPc1i+0XKDqfQBaBXAN59jftZoHZlz1p/GXICn4xuw75jtUOFyxAgsbBJjDFou
         B0UalfvkU+usblxU9Q9rFLS1ZsMsjIYBFAJmMVMapxKuYs3cTsKPOXAwUcUrQDS4z3+7
         u3Ubiu82V+V1U7UDQN/xe2C0wXJtD0IpVMZrfz6BM5U5M5Qjt6lorbnYKM4n6OQ3gMxQ
         7LXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685480856; x=1688072856;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PPwXJsosDvR2GXEx1CcTJ3PbUSW4FEYVU74eekwaGmY=;
        b=iY7CyHn7QAIZmh6WsIVxM1kH0ZLGWkERVmqFw1eUCloulZI9n0K2LfD6aZNu2L7Enh
         aiX5/QFTiAZ9SGAUzkecfD40C7SImPgfN7m6t/yXaBNYXq16+S0RZnRToOBOdulcHB91
         osa25Rx6kNI+hB6mrRbjmq4NbcDMmc3JbxENC3M/gC1+vaf1GAO22V0X3u2bdIdiYePZ
         fCOB7OoJUJjIplSZA7wSwgroFAuB+DU5VQIQq6VmE9v/N+KDS9I1eXClfQ6XJXFLWWbP
         j4Uet3IeI18vtQUFSOAN5FvBLz0to7tuClXdd0CrqSFP9HRMg5rlw/U1XcXjIVNGnkti
         chQQ==
X-Gm-Message-State: AC+VfDx8LXuT15J/lQ6MAY7F/ztZ9Y/bvvCiPm2PF8bbyy8mTTp8rlHf
	D+NhA1RypfxcaalWc19wsdgrAR/65P2JkmQ7OQE=
X-Google-Smtp-Source: ACHHUZ4Hy8YYCKKPMNhE5GaNU3kCfut3OKlYCT1SsMjJcZBCQQu6AGylea4nFPhPCYrPCg9v8wuFGwQWQrBMhYZtR9k=
X-Received: by 2002:a2e:3013:0:b0:2af:1120:3f6a with SMTP id
 w19-20020a2e3013000000b002af11203f6amr1515364ljw.11.1685480855521; Tue, 30
 May 2023 14:07:35 -0700 (PDT)
MIME-Version: 1.0
References: <W203olqQs1iBI2xG9mGjiw1svSW52XqTjccB72ejEs@lists.ettus.com>
 <c157a530-5c52-0fd4-79a4-0c65810ee0f0@gmail.com> <JN1P275MB053556431057E296A551C8C695469@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
 <CAB__hTSxoCSY8PahuLUSC-ig6FNr_r5PPsaobNh9KK8S6xNxCA@mail.gmail.com>
 <7ed5a34a-8862-09ae-edfa-d5ca15947915@gmail.com> <JN1P275MB053547F1D25B83244EE59F8795469@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
 <CAL7q81shBqtUzSaHseMO59rq1u3QSxSrA7bCaX-BVZo7FNRLZQ@mail.gmail.com>
 <CANq7nXcTe6FrDNXHiYUKY7VU-47UqdW3PtZj5eafBP84-2HhbA@mail.gmail.com>
 <4da2d23c-0854-582c-a191-deb5476488fe@gmail.com> <CANq7nXeVL8ActLms9N5kCAb78ALSrKPBb-agALYJjzNk9Yi9mg@mail.gmail.com>
 <CAEXYVK6JLh_C4cb6GbPYCFxNBv=U3AgUdqP=yBkmSH7Vey4wOQ@mail.gmail.com>
 <CANq7nXf266iBvAARXfrmebaTeZFskaCPwvXHvvWT+Hzg-sVghg@mail.gmail.com>
 <CAEXYVK5NEVExmcf0uhbXjOABwRbbxC+yvY0pZ7dBX22rYom27Q@mail.gmail.com> <CANq7nXfUvuDaLbOx_admWoNNsVt1eJN15L65uS-VmniAhh=u1w@mail.gmail.com>
In-Reply-To: <CANq7nXfUvuDaLbOx_admWoNNsVt1eJN15L65uS-VmniAhh=u1w@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Tue, 30 May 2023 17:07:24 -0400
Message-ID: <CAEXYVK6ONWM8ayhz+V9beCNu56ewAP5_GJtDcY0du2JXJpGa4g@mail.gmail.com>
To: Mena Ghebranious <mena@chaosinc.com>
Message-ID-Hash: CAD7ZQ7JPWTHWHQDSKFIR72P4UTWZ5H5
X-Message-ID-Hash: CAD7ZQ7JPWTHWHQDSKFIR72P4UTWZ5H5
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, Jonathon Pendlum <jonathon.pendlum@ettus.com>, Leon Wabeke <LWabeke@csir.co.za>, Rob Kossler <rkossler@nd.edu>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 - GPIO ATR output to TX output delay
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CAD7ZQ7JPWTHWHQDSKFIR72P4UTWZ5H5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2150042498428301444=="

--===============2150042498428301444==
Content-Type: multipart/alternative; boundary="000000000000ab4d7005fcef9702"

--000000000000ab4d7005fcef9702
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 30, 2023 at 4:42=E2=80=AFPM Mena Ghebranious <mena@chaosinc.com=
> wrote:

> I don't see any bypass logic in the FPGA code, but in any case, the N320
> only supports three master clock rates, none of which is our desired
> sampling rate:
>
> https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Suppo=
rted_Sample_Rates
>

What is your desired sample rate?

Bypassing the hbf filtering happens here:


https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/duc.v=
#L193

Brian

>

--000000000000ab4d7005fcef9702
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, May 30, 2023 at 4:42=E2=80=AFPM M=
ena Ghebranious &lt;<a href=3D"mailto:mena@chaosinc.com">mena@chaosinc.com<=
/a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"ltr">I don&#39;t see any bypass logic=
 in the FPGA code, but in any case, the N320 only supports three master clo=
ck rates, none of which is our desired sampling rate:<div><a href=3D"https:=
//kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Supported_Sam=
ple_Rates" target=3D"_blank">https://kb.ettus.com/USRP_N300/N310/N320/N321_=
Getting_Started_Guide#Supported_Sample_Rates</a></div></div></blockquote><d=
iv><br></div><div>What is your desired sample rate?</div><div><br></div><di=
v>Bypassing the hbf filtering happens here:</div><div><br></div><div>=C2=A0=
=C2=A0<a href=3D"https://github.com/EttusResearch/uhd/blob/master/fpga/usrp=
3/lib/rfnoc/duc.v#L193">https://github.com/EttusResearch/uhd/blob/master/fp=
ga/usrp3/lib/rfnoc/duc.v#L193</a></div><div><br></div><div>Brian</div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"gmail_quote"><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div cla=
ss=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
</blockquote></div>
</blockquote></div></div>
</blockquote></div>
</blockquote></div></div>

--000000000000ab4d7005fcef9702--

--===============2150042498428301444==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2150042498428301444==--
