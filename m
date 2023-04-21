Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 44F4E6EAC84
	for <lists+usrp-users@lfdr.de>; Fri, 21 Apr 2023 16:12:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5ACD9380A83
	for <lists+usrp-users@lfdr.de>; Fri, 21 Apr 2023 10:12:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682086349; bh=+amnPW5C6YKVb3j4JkwgTZsi9b6UV8a7A7R9LwZPzaI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=pa3CEXN8toB4i8QKK9zjnGQ1JNiGosCnTe9ghTyY5VXMujjukqjPRqs1d+hYX+J/h
	 /ucRB5kN/g5B9JiCtUj8nw3qDN7IMh+t7RPwK6WM5Rv9ir5iBH5CXo9XRZMxHSkvUO
	 C5YoMN0bm9+WgLkGw2CeJJjAOhE87dWYxXPJU+qbSQaZ5V4NncBRf5xR54yPsVv+K1
	 VQtVaqaD9WFHf4uWYmlKiUzjS0wuZSvjxyDZfmnpV8JfH70GSpYOOsIvCKbbECj8Gt
	 8P0lfWWgggNOJyYiYDN299JIN+tVJgvb2+eXuHOwC76zGTuyDO7gXw88pf7+Bkb6CA
	 nU74aguLAIcxQ==
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	by mm2.emwd.com (Postfix) with ESMTPS id B9EBB380989
	for <usrp-users@lists.ettus.com>; Fri, 21 Apr 2023 10:12:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="N55sNrhU";
	dkim-atps=neutral
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-5f6058c0761so8436256d6.1
        for <usrp-users@lists.ettus.com>; Fri, 21 Apr 2023 07:12:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682086327; x=1684678327;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CY6cXfMZPb9pw68BkRN/jBDx8jeTr7doArRRi9u9Lwc=;
        b=N55sNrhUNkbbR/oZFXKxWQHyKBpi2f99Z0ILoVMmfaCN4GRJygP0S2F0BiFlmaNhMo
         W3nf4qe1+6DCuZvV3ftQxmzoeBcybvdoszlHNEOOuLzPxwuYExvQ+0m6nzLi/ZYdS3FX
         v2Tsz2nYIn2f6Gb12zDoXslEu4ag7jCzDFnCAXDbjCBGorEJbGE3BvAiZgMn+n6BGk+s
         n0LUgZ+f3QfRvvGlyz1NZ7+35imwuhLK8OOpoCPrn21/Tr/4jjYbH52yYFoe6U7fABiU
         cuLZkVLVyGdlX0eZqaYhNjjbatlYoBtUywsRUy4VGrRov02oXihXx2wSi24krjIQ0vwE
         TmFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682086327; x=1684678327;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=CY6cXfMZPb9pw68BkRN/jBDx8jeTr7doArRRi9u9Lwc=;
        b=eb0PZoEu+F1mjMs9P94eTH3JrN7pyjX5w3FkMpdlm0Lwk8VkZ8CPC7h6rzvY+V++UK
         u8WLy10o/eq858YwxG/AUXPNPsXxVLwrZJhOBHtc7WLZ+cZLQYGtin2z42kSpKDfPwKP
         6FD31PISuWkkwbFolJp8SRjo0dw/FqHo84EkHYXgQOy4oCtoQtVcMUeusd5jqIDH0J8X
         X2lXZw1zTVRyZZka77ff0v3xOuZToMY9S1RbzH3gUVd8oE1DGHp/FSEb62rT2rd9isU8
         fHlbvBNzg6fQhW9Ml3no3fUykxAZrsuxk7bd3YamyBzTEcrgZQyzvRbuJAp+Oj75lv+K
         Gy4w==
X-Gm-Message-State: AAQBX9fjemflsIKjtorRKvtSyAcJJV9QU7BydPJDqMJ/NyojFbo2lDVv
	jBtUi/311JvOUmaHO/b8E4YxcbvU9hs=
X-Google-Smtp-Source: AKy350aMj7wTrV/LAKa/iL8YL//bTlkGj84KwrUQQ4/vrnWRgZJwJFb5Iiu19K+qEZaIRLKdXqqAAQ==
X-Received: by 2002:a05:6214:1bc9:b0:5e3:d150:3163 with SMTP id m9-20020a0562141bc900b005e3d1503163mr9229565qvc.20.1682086326941;
        Fri, 21 Apr 2023 07:12:06 -0700 (PDT)
Received: from [192.168.2.193] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id p3-20020a0ccb83000000b0060270619bfesm700386qvk.24.2023.04.21.07.12.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 07:12:06 -0700 (PDT)
Message-ID: <825cb945-6892-ce0b-071a-4ce694941bd4@gmail.com>
Date: Fri, 21 Apr 2023 10:12:05 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Leon Wabeke <LWabeke@csir.co.za>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <JN1P275MB053554638C3D2E4F1C0C67BD95639@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
 <9cbde8ad-08e9-c0d2-a010-edd4fbf64c26@gmail.com>
 <JN1P275MB053532A9CF83C0C50CA7585D95609@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <JN1P275MB053532A9CF83C0C50CA7585D95609@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
Message-ID-Hash: F7VDAKJS5Q2DHBXPGKJLJDHLMEBMSHFV
X-Message-ID-Hash: F7VDAKJS5Q2DHBXPGKJLJDHLMEBMSHFV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: TwinRX phase synchronisation using different versions of UHD
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/F7VDAKJS5Q2DHBXPGKJLJDHLMEBMSHFV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5574012329265687471=="

This is a multi-part message in MIME format.
--===============5574012329265687471==
Content-Type: multipart/alternative;
 boundary="------------1UeNKMokCbXxVnCrm0lFhqgP"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------1UeNKMokCbXxVnCrm0lFhqgP
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 21/04/2023 04:17, Leon Wabeke wrote:
>
> Hi Marcus
>
> After stripping out the wrappers and replacing variables etc. it looks=20
> like we are using the following lines to attempt to setup the code to=20
> share the LO:
>
> USRP->set_rx_lo_export_enabled(true, USRP->ALL_LOS, 0);
>
> USRP->set_rx_lo_source(=E2=80=9Cinternal=E2=80=9D, USRP->ALL_LOS, 0);
>
> USRP->set_rx_lo_export_enabled(true, USRP->ALL_LOS, 0);
>
> USRP->set_rx_lo_source(=E2=80=9Ccompanion=E2=80=9D, USRP->ALL_LOS, 1);
>
> USRP->set_rx_lo_export_enabled(true, USRP->ALL_LOS, 0);
>
> USRP->set_rx_lo_source(=E2=80=9Cexternal=E2=80=9D, USRP->ALL_LOS, 2);
>
> USRP->set_rx_lo_export_enabled(true, USRP->ALL_LOS, 0);
>
> USRP->set_rx_lo_source(=E2=80=9Cexternal=E2=80=9D, USRP->ALL_LOS, 3);
>
> I did wonder about the fact that channel 2 and 3 use =E2=80=9Cexternal=E2=
=80=9D and=20
> whether that shouldn=E2=80=99t somehow be =E2=80=9Creimport=E2=80=9D or=
 =E2=80=9Ccompanion=E2=80=9D to=20
> indicate it should be sharing the LO, instead of getting an LO from=20
> external to the X310. Or should =E2=80=9Cexternal=E2=80=9D only be inte=
rpreted as=20
> external to the TwinRX daughterboard?
>
> What I am seeing here that is also bothering me is that we are calling=20
> set_rx_lo_export_enabled 4 times with the same settings, with the=20
> intention that it should be setting up each of the channels, to use=20
> channel 0. Should that actually be 0 to 3 or should we be explicitly=20
> be disabling 1 to 3?
>
> Oh, something possibly unrelated is that for the mode where the code=20
> changes frequency after running, I initially tried to do that using a=20
> timed tune request, however I found that after 48 such requests the=20
> firmware crashed as stopped working, then I reverted to the mode of=20
> stopping the streaming and using tune request without a command time.=20
> I know after initialisation we do start at a specific time, but am not=20
> sure if the tune request during initialisation is timed or not.
>
> Leon
>
>
The multiple calls to "set_rx_lo_exportr_enabled()" aren't necessary as=20
far as I know--I've never had to do that.=C2=A0 Just the
 =C2=A0 one call on the LO that you set as "master".

There's no physical support for "LO outside the cabinet" on X310+TwinRx,=20
so "external" just means external to the card.

You should also make certain that your TwinRx cards are actually wired=20
correctly for LO-sharing.

https://kb.ettus.com/TwinRX_Getting_Started_Guides

Could you share a error log of when the multiple-timed-commands=20
"crashes"?=C2=A0=C2=A0 That would be very helpful.


--------------1UeNKMokCbXxVnCrm0lFhqgP
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 21/04/2023 04:17, Leon Wabeke wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:JN1P275MB053532A9CF83C0C50CA7585D95609@JN1P275MB0535.ZAFP275.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}@font-face
	{font-family:Menlo;
	panose-1:2 11 6 9 3 8 4 2 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;
	mso-fareast-language:EN-US;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Courier New";
	mso-ligatures:standardcontextual;
	mso-fareast-language:EN-US;}span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Consolas",serif;}span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}p.p1, li.p1, div.p1
	{mso-style-name:p1;
	margin:0cm;
	font-size:8.5pt;
	font-family:Menlo;
	color:black;}span.s1
	{mso-style-name:s1;}span.s2
	{mso-style-name:s2;
	color:#B42419;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}div.WordSection1
	{page:WordSection1;}</style>
      <div class=3D"WordSection1">
        <p class=3D"p1"><span class=3D"s1">Hi Marcus<o:p></o:p></span></p=
>
        <p class=3D"p1"><span class=3D"s1"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"p1"><span class=3D"s1">After stripping out the wrappe=
rs
            and replacing variables etc. it looks like we are using the
            following lines to attempt to setup the code to share the
            LO:<o:p></o:p></span></p>
        <p class=3D"p1"><span class=3D"s1">USRP-&gt;set_rx_lo_export_enab=
led(</span><span
            class=3D"s2">true</span><span class=3D"s1">, USRP-&gt;ALL_LOS=
,
            0);</span><o:p></o:p></p>
        <p class=3D"p1"><span class=3D"s1">USRP-&gt;set_rx_lo_source(=E2=80=
=9Cinternal=E2=80=9D,
            USRP-&gt;ALL_LOS, 0);</span><o:p></o:p></p>
        <p class=3D"p1"><span class=3D"s1">USRP-&gt;set_rx_lo_export_enab=
led(</span><span
            class=3D"s2">true</span><span class=3D"s1">, USRP-&gt;ALL_LOS=
,
            0);</span><o:p></o:p></p>
        <p class=3D"p1"><span class=3D"s1">USRP-&gt;set_rx_lo_source(=E2=80=
=9Ccompanion=E2=80=9D,
            USRP-&gt;ALL_LOS, 1);
          </span><o:p></o:p></p>
        <p class=3D"p1"><span class=3D"s1">USRP-&gt;set_rx_lo_export_enab=
led(</span><span
            class=3D"s2">true</span><span class=3D"s1">, USRP-&gt;ALL_LOS=
,
            0);</span><o:p></o:p></p>
        <p class=3D"p1"><span class=3D"s1">USRP-&gt;set_rx_lo_source(=E2=80=
=9Cexternal=E2=80=9D,
            USRP-&gt;ALL_LOS, 2); =C2=A0</span><o:p></o:p></p>
        <p class=3D"p1"><span class=3D"s1">USRP-&gt;set_rx_lo_export_enab=
led(</span><span
            class=3D"s2">true</span><span class=3D"s1">, USRP-&gt;ALL_LOS=
,
            0);</span><o:p></o:p></p>
        <p class=3D"p1"><span class=3D"s1">USRP-&gt;set_rx_lo_source(=E2=80=
=9Cexternal=E2=80=9D,
            USRP-&gt;ALL_LOS, 3);
            <o:p></o:p></span></p>
        <p class=3D"p1"><span class=3D"s1"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"p1"><span class=3D"s1">I did wonder about the fact th=
at
            channel 2 and 3 use =E2=80=9Cexternal=E2=80=9D and whether th=
at shouldn=E2=80=99t
            somehow be =E2=80=9Creimport=E2=80=9D or =E2=80=9Ccompanion=E2=
=80=9D to indicate it should
            be sharing the LO, instead of getting an LO from external to
            the X310. Or should =E2=80=9Cexternal=E2=80=9D only be interp=
reted as
            external to the TwinRX daughterboard? <o:p></o:p></span></p>
        <p class=3D"p1"><span class=3D"s1">What I am seeing here that is
            also bothering me is that we are calling
            set_rx_lo_export_enabled 4 times with the same settings,
            with the intention that it should be setting up each of the
            channels, to use channel 0. Should that actually be 0 to 3
            or should we be explicitly be disabling 1 to 3?<o:p></o:p></s=
pan></p>
        <p class=3D"p1"><span class=3D"s1"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"p1"><span class=3D"s1">Oh, something possibly unrelat=
ed
            is that for the mode where the code changes frequency after
            running, I initially tried to do that using a timed tune
            request, however I found that after 48 such requests the
            firmware crashed as stopped working, then I reverted to the
            mode of stopping the streaming and using tune request
            without a command time. I know after initialisation we do
            start at a specific time, but am not sure if the tune
            request during initialisation is timed or not.<o:p></o:p></sp=
an></p>
        <p class=3D"p1"><span class=3D"s1"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"p1"><span class=3D"s1">Leon =C2=A0<o:p></o:p></span><=
/p>
        <p class=3D"p1"><o:p>=C2=A0</o:p></p>
        <br>
      </div>
    </blockquote>
    The multiple calls to "set_rx_lo_exportr_enabled()" aren't necessary
    as far as I know--I've never had to do that.=C2=A0 Just the<br>
    =C2=A0 one call on the LO that you set as "master".<br>
    <br>
    There's no physical support for "LO outside the cabinet" on
    X310+TwinRx, so "external" just means external to the card.<br>
    <br>
    You should also make certain that your TwinRx cards are actually
    wired correctly for LO-sharing.<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/TwinR=
X_Getting_Started_Guides">https://kb.ettus.com/TwinRX_Getting_Started_Gui=
des</a><br>
    <br>
    Could you share a error log of when the multiple-timed-commands
    "crashes"?=C2=A0=C2=A0 That would be very helpful.<br>
    <br>
    <br>
  </body>
</html>

--------------1UeNKMokCbXxVnCrm0lFhqgP--

--===============5574012329265687471==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5574012329265687471==--
