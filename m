Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EAB264E519
	for <lists+usrp-users@lfdr.de>; Fri, 16 Dec 2022 01:17:42 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3093638459B
	for <lists+usrp-users@lfdr.de>; Thu, 15 Dec 2022 19:17:41 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1671149861; bh=7qD156j/kOr3dtTQm5803+qBYjlyxxQavXIyK6sVpig=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=RiWWoT/9v8qtgQW8sCNvDGpWW0M0a+gtCX92yXlu9Chgloh93/BrNJFj7XxsWRKU8
	 fCXDW3/AHXj5yXEUNHYt12eDTWdvOavwsezlRiVnyCrvzcpos0rUODUTYXg31/HJz+
	 YOI7hcEnDQ3Ba6N4VCt80XnHJkonprB1jQS0PeM1/d1V/B3XrFi7Ibh9Y/xb+120vt
	 3rhbc0XQZX2TZpkSKkvtFHVsHphHkkBnicLlz300usc2Iy/9YwK28Hyx1CjpUtlEim
	 tYexhSTcHa0uwh2wkDHl9AYpQpY3FluiC+9jqT1Q+TBxEVS3yKqsewNvtyRyXjS35C
	 nA3lf1Uf1nRog==
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 29B98384529
	for <USRP-users@lists.ettus.com>; Thu, 15 Dec 2022 19:17:35 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="SRlgaK+3";
	dkim-atps=neutral
Received: by mail-qt1-f171.google.com with SMTP id z12so1540646qtv.5
        for <USRP-users@lists.ettus.com>; Thu, 15 Dec 2022 16:17:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+OXcI3CxStG21SBKBWBEVCgY8eS92g7XnnobtnT+5Gw=;
        b=SRlgaK+33S+p0KCy12FJYG41krikOYdKuCvYsaxveObbTRbfkeym3UTcXdSHbKtQG2
         eRuWr6iWM9rEDCJeOsxxqCCqIa46TJyTP3v1a5JFZsGIrQGmh+yI73RHBxW1uWkp6o35
         qPMi8o0p+WEvV8VuWjgaZP+OrBm28HN/vHC7/BKG02LW+RYO+63Luy/TNctk6CtJfq4i
         XnHPhKAK1zs9LjVYj8KY2Spq7guY2Nm0QN18QrWx9MoZfTNItVqcv+BPTnscWAMuwKN4
         x82MQW8Sgqfqqpm6UH+4I8MCd1OfOioBOK2BZ1+EX+G3iSe76Cco8rWHyqEIPhX7NyCy
         FQXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+OXcI3CxStG21SBKBWBEVCgY8eS92g7XnnobtnT+5Gw=;
        b=EmallamUiRMxdpc1mpL1dnMSKAJw25iuTNWnck+IfG36agyow3X+7bFtQSpos6S4bw
         GgVJGXNao1F58YhcHiwJwBHxzQI+I/JetKLAF8vidMI3X5YljGrz5I9uYeBQDU79GuTQ
         xn45Q9EFivKIG6kQUf0i1uvH8n1si5TQxQy6u54kPe/+k4cFdLuglm+Y5YJLOtWekpMb
         IZ4UX4lDGvZCWlY1/Sghvy2CHankhQP5PBthThpldj2K5Giz5fA9ooc7+HOZ+gywr6yA
         PKj+Qq/YxkqPXrj65N0Rs4tQi2FdKKN3XInc476B9YAHfgDOfurRC3/znWMOYMjsjXbf
         qZRA==
X-Gm-Message-State: ANoB5pmst1YiOZ+8cDThgG6oSm7di3JLmf0iehBXjdGMAPjokKMElwyI
	KOf7tctIZ2mMkgXmeCADjCI=
X-Google-Smtp-Source: AA0mqf5CcuC2LWQDHMOvjME9+Aq+sOrTdRk5iaj3H8XrI4PHlElEzzJaksuoyNweqiMlCl79HHU6EQ==
X-Received: by 2002:ac8:4514:0:b0:3a8:ef7:f29c with SMTP id q20-20020ac84514000000b003a80ef7f29cmr28260549qtn.46.1671149854528;
        Thu, 15 Dec 2022 16:17:34 -0800 (PST)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-06-174-88-54-67.dsl.bell.ca. [174.88.54.67])
        by smtp.gmail.com with ESMTPSA id d14-20020ac8668e000000b0039492d503cdsm317588qtp.51.2022.12.15.16.17.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Dec 2022 16:17:34 -0800 (PST)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 15 Dec 2022 19:17:23 -0500
Message-Id: <B6B3754D-0CBB-4EC6-9E2F-B5D66AF28E38@gmail.com>
References: <CAGHsMd96d=32dxoxk27f5K7kjf+-C9LsT3RNkC41JwkXHspdnA@mail.gmail.com>
In-Reply-To: <CAGHsMd96d=32dxoxk27f5K7kjf+-C9LsT3RNkC41JwkXHspdnA@mail.gmail.com>
To: =?utf-8?B?6JaE55Sw5oKg5qi5?= <yuki-susukida@kke.co.jp>
X-Mailer: iPhone Mail (20B101)
Message-ID-Hash: JUDESQPK72WKGS7RZDVN2HKV4SUWJYFF
X-Message-ID-Hash: JUDESQPK72WKGS7RZDVN2HKV4SUWJYFF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Accidental Power-Down During Flashing of X310 FPGA Image
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JUDESQPK72WKGS7RZDVN2HKV4SUWJYFF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0898695174255715921=="


--===============0898695174255715921==
Content-Type: multipart/alternative; boundary=Apple-Mail-6BD18933-1165-4B4A-98A6-CDCFEEC48128
Content-Transfer-Encoding: 7bit


--Apple-Mail-6BD18933-1165-4B4A-98A6-CDCFEEC48128
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Glad it worked out for you.&nbsp;<div><br><=
/div><div><br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"=
><br><blockquote type=3D"cite">On Dec 15, 2022, at 7:12 PM, =E8=96=84=E7=94=B0=
=E6=82=A0=E6=A8=B9 &lt;yuki-susukida@kke.co.jp&gt; wrote:<br><br></blockquot=
e></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"=
><div dir=3D"ltr"><div><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D=
"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><d=
iv dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hello Marcus,<br><br>I=
 have completed the restoration of X310 with the help of the page you shared=
.&nbsp;</div><div>Thank you very much for your help.&nbsp;<br></div></div></=
div></div></div></div></div></div></div></div></div></div><div><br></div>Yuk=
i Susukida<div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">2022=E5=B9=B412=E6=9C=8815=E6=97=A5(=E6=9C=A8) 13:07 =E8=96=84=E7=94=
=B0=E6=82=A0=E6=A8=B9 &lt;<a href=3D"mailto:yuki-susukida@kke.co.jp">yuki-su=
sukida@kke.co.jp</a>&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr"><p style=3D"box-sizing:border-box;margin-top:0px;mar=
gin-bottom:1rem;color:rgb(72,70,91);font-family:-apple-system,BlinkMacSystem=
Font,&quot;Segoe UI&quot;,Roboto,&quot;Helvetica Neue&quot;,Arial,&quot;Noto=
 Sans&quot;,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&qu=
ot;,&quot;Segoe UI Symbol&quot;,&quot;Noto Color Emoji&quot;;font-size:15px"=
>Hello Marcus,<br><br>Thanks for your prompt response.<br>Refer to the "X300=
/X310 Device Recovery" page to attempt recovery.<br></p><p style=3D"box-sizi=
ng:border-box;margin-top:0px;margin-bottom:1rem;color:rgb(72,70,91);font-fam=
ily:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,&quot;Helve=
tica Neue&quot;,Arial,&quot;Noto Sans&quot;,sans-serif,&quot;Apple Color Emo=
ji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;,&quot;Noto C=
olor Emoji&quot;;font-size:15px">Yuki Susukida</p></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">2022=E5=B9=B412=E6=9C=8815=E6=
=97=A5(=E6=9C=A8) 11:55 Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@=
gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">On 14/12/2022 21:37, =E8=96=84=E7=
=94=B0=E6=82=A0=E6=A8=B9 wrote:<br>
&gt; Hello everyone,<br>
&gt;<br>
&gt; I accidentally turned off USRP X310 while updating the FPGA image of <b=
r>
&gt; the USRP X310 using the procedure in the link below.<br>
&gt; After that, when I turned on the X310, there was no response to the <br=
>
&gt; "usrp_find_devices" command, and the network interface on the PC side <=
br>
&gt; could not recognize the X310.<br>
&gt; How can I solve this problem?<br>
&gt; <a href=3D"https://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_gett=
ing_started_fpga_update" rel=3D"noreferrer" target=3D"_blank">https://files.=
ettus.com/manual/page_usrp_x3x0.html#x3x0_getting_started_fpga_update</a><br=
>
&gt;<br>
&gt; Thank you in advance.<br>
&gt;<br>
&gt; Yuki Susukida<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com=
" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@list=
s.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
The procedure is described here:<br>
<br>
<a href=3D"https://kb.ettus.com/X300/X310_Device_Recovery" rel=3D"noreferrer=
" target=3D"_blank">https://kb.ettus.com/X300/X310_Device_Recovery</a><br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.ett=
us.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div></div></div>
</div></blockquote></div></body></html>=

--Apple-Mail-6BD18933-1165-4B4A-98A6-CDCFEEC48128--

--===============0898695174255715921==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0898695174255715921==--
