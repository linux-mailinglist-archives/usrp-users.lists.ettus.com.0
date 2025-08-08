Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C91B1F09B
	for <lists+usrp-users@lfdr.de>; Sat,  9 Aug 2025 00:09:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CBDB43863E9
	for <lists+usrp-users@lfdr.de>; Fri,  8 Aug 2025 18:09:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1754690953; bh=auNLOiXfziXjn6sEZRwZfOXR/HwFF1eEZq9LLCLqf+Y=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=wpZvYcP7vxCQjP6Mlag/2Udfx4/PrOzLKfJ9iEZcFMrOEGZb3YDXIlHDYGIZAZ2zl
	 WIKdE5sfxrcs60dYRLy3MtD1w/RcsGclr/zUdx10oeKCVr5CxtqSaTqz9QY6yd+LTy
	 mgA0EY+aONjCcf833O0nUBALh+2uxBuJyQ7iVoq8xl1i+k+D1Yj+CSluWeWLJgmZ9U
	 61KO9Fycw+QT4m6E7YoKtxflnyulWnJtRVr+V14fsgh3Pyj8HWQlid21LzkjrEzA3L
	 yjUXKTmaQGOfhw7id0c/IQbWjNe+fXWZe3puAZ+u0+Ltxe4ou9gRZJAP9Kky/oqt+W
	 JchwIoLrabR9Q==
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by mm2.emwd.com (Postfix) with ESMTPS id B9300386385
	for <usrp-users@lists.ettus.com>; Fri,  8 Aug 2025 18:08:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="EGYlvDaK";
	dkim-atps=neutral
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-7e817450f7eso263277985a.0
        for <usrp-users@lists.ettus.com>; Fri, 08 Aug 2025 15:08:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754690909; x=1755295709; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=enovfZdZSuEsr45EpsAJHCHJUnRMLE6BJIEz+a3AtGA=;
        b=EGYlvDaKQ3VlPzx8Xk8DBzgvzRWUFbA+MY0wwGANvB4akRZK5TMP3ZPZYKFhUeZuWi
         vg0kHkz5U6DCU80ZuLjbHoezChleciiXyZZV6M80Ftt5oGC9hEfTVsQLgECWtEyNskNT
         Mrxw8LWWmBR2xCOr4YYGf1ARGnf5jVZH2YxyZ75A6sfy3RnAqY8RaNOpgZCN4kufRkvC
         2x/nQ3/U7p0Q+COC9Mze1Fb4kdX2HaGfdljS+1rMwKS/If5DZWsrhRD0jhxtY2nckAfo
         V2lF8QO4WSmlAKHsxFDu5JUPoD8sUDdIyQ3+UAHVtWAfMpBiriZuXznsmXnnUbFVumwC
         UOKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754690909; x=1755295709;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=enovfZdZSuEsr45EpsAJHCHJUnRMLE6BJIEz+a3AtGA=;
        b=YBrbvEGKpJ+bozMfWDKeYpQMq+GwCriRnOQlHaXOyqlqBFPipCHltoyYFUqGLBdwy2
         P3fb/oIiPzc62X/wquaCJ2Vi1yBwpw3GZ6o4jV0T/BVIfWy7SkuOIPFZYyl9k1PIGWT7
         TL6q+GEsgRbflyTAyPgOJOzyIkTBtOwYwDFqgIfXxyyZszmYRvfIzQKLY4yzu2mDgp8G
         4IRkPq9NYYo1Ln1j3CQXLEq09GlRhf0mAQdhlbOfqlZaiBZTm5wiq9l3u1cgsdQKnwFk
         FGKgsZK18DkyZ73eiAyH0vhrlgfNeTFrPgUyhU5Q60Dm26lJ0RXlragZA1yfnkcqTDSx
         GVfw==
X-Gm-Message-State: AOJu0YwwtDfawmVzcUA1yLF62qn6GfumrwEYLcDsioUEzVLtJqdwHOoh
	zrgj0zM/9FTGpBTjhDztXzyjt1pahxNHPDal0/6ZziyB9CR5uiwzBJsBdwZfrw==
X-Gm-Gg: ASbGncsIVgWvzY+apz9oCkTeae+EjOmfmOjWeeyHGhjOtlz27A+BBgC/zlcsflvWBWR
	M8ET9rSTUFnDbh76w5leRJjwAO6p5iUJrdLRGx/QgCZ2yo4cqo6uUMV9QYqbbBrYp0fhnHndTol
	Ab1XAGLiRIdey1MZoIpYFlmQMHHIzJ63R5Yj6RZxJDFRQXPvAjSzXtSmmTYcq99JDMsKFLEK1lA
	1uuPjqf7AI9R++5Cs44V00JHzK85Tnx4TnpuW7pueu37f8YgFZI8jwgHEYekuRlXqrzysCCrhy7
	SLezz2a+X6W+39imBnq9OxxrtsD7shPYQnSk1N/JAKcYqhf/P45rslaNyRl4Hs3Z/Aht//UwTM4
	v+dJqGUHVTnzNcqLV0d6xWwWBxZNYvrQ=
X-Google-Smtp-Source: AGHT+IEpwsfhQRaTwFXUZ7JuEBbQ23chQw9af6gJq9gl3yasUPlQ3RPVlQSnu/CkrS1+AJNmiByUMA==
X-Received: by 2002:a05:620a:459e:b0:7e3:46da:9e1f with SMTP id af79cd13be357-7e82c7a7fecmr623261685a.56.1754690908538;
        Fri, 08 Aug 2025 15:08:28 -0700 (PDT)
Received: from [192.168.2.208] ([174.93.0.120])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7e67f7552e2sm1178885585a.79.2025.08.08.15.08.27
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Aug 2025 15:08:28 -0700 (PDT)
Message-ID: <8e4439c9-2189-40d6-a2e7-31fb5d2136cf@gmail.com>
Date: Fri, 8 Aug 2025 18:08:17 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <SJ0PR09MB9126FFB633AD2FB006E19AACEC2FA@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <CAAxXO2GwW8YMO25=rNQawe5i7nGH6K=E9kqVw+U2vMei7z=egw@mail.gmail.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAAxXO2GwW8YMO25=rNQawe5i7nGH6K=E9kqVw+U2vMei7z=egw@mail.gmail.com>
Message-ID-Hash: DFA4QA3JWQPTRLPVXD42JG53UZ6DLMNE
X-Message-ID-Hash: DFA4QA3JWQPTRLPVXD42JG53UZ6DLMNE
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 output power too low
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DFA4QA3JWQPTRLPVXD42JG53UZ6DLMNE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7211815242966868492=="

This is a multi-part message in MIME format.
--===============7211815242966868492==
Content-Type: multipart/alternative;
 boundary="------------Ge2TcimejZqvDF10WqBmGtrK"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------Ge2TcimejZqvDF10WqBmGtrK
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2025-08-08 16:09, Nikos Balkanas wrote:
> Hi Eugene,
>
> I assume your usrps are connected to the same host and UHD. This seems=20
> to be a usrp hardware issue.
> I would talk to NI to send my unit back:(
I agree.=C2=A0 This seems like a hardware issue--perhaps a failing RF PA =
section.

Please contact NI/Emerson support for repair advice.


>
> On Fri, Aug 8, 2025 at 9:49=E2=80=AFPM Eugene Grayver=20
> <eugene.grayver@aero.org> wrote:
>
>     Hi,
>
>     I have a bunch of N320/N321s.=C2=A0 All but one are working OK.=C2=A0=
 One
>     has an output power that's ~20 dB lower than expected.=C2=A0 Testin=
g
>     with tx_waveforms --gain 60 generates a tone at around 1 dBm,
>     instead of the expected ~20 dBm.=C2=A0 The USRPs get rather warm =E2=
=80=94
>     could this be a heat-related failure?=C2=A0 But if so, why just one=
?
>
>     Any ideas?
>
>     Thanks.
>
>     Eugene Grayver, Ph.D.
>     Principal Engineer
>     310-336-1274
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------Ge2TcimejZqvDF10WqBmGtrK
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2025-08-08 16:09, Nikos Balkanas
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAAxXO2GwW8YMO25=3DrNQawe5i7nGH6K=3DE9kqVw+U2vMei7z=3Degw@mai=
l.gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div class=3D"gmail_default" style=3D"font-size:small">Hi Eugene,=
</div>
        <div class=3D"gmail_default" style=3D"font-size:small"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:small">I assume y=
our
          usrps are connected to the same host and UHD. This seems to be
          a usrp hardware issue.</div>
        <div class=3D"gmail_default" style=3D"font-size:small">I would ta=
lk
          to NI to send my unit back:( <br>
        </div>
      </div>
    </blockquote>
    I agree.=C2=A0 This seems like a hardware issue--perhaps a failing RF=
 PA
    section.<br>
    <br>
    Please contact NI/Emerson support for repair advice.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAAxXO2GwW8YMO25=3DrNQawe5i7nGH6K=3DE9kqVw+U2vMei7z=3Degw@mai=
l.gmail.com"><br>
      <div class=3D"gmail_quote gmail_quote_container">
        <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Aug 8, 2025 at 9:49=
=E2=80=AFPM
          Eugene Grayver &lt;<a href=3D"mailto:eugene.grayver@aero.org"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">euge=
ne.grayver@aero.org</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
          <div class=3D"msg984910071512524980">
            <div dir=3D"ltr">
              <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                Hi,</div>
              <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                <br>
              </div>
              <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                I have a bunch of N320/N321s.=C2=A0 All but one are worki=
ng
                OK.=C2=A0 One has an output power that's ~20 dB lower tha=
n
                expected.=C2=A0 Testing with tx_waveforms --gain 60 gener=
ates
                a tone at around 1 dBm, instead of the expected ~20
                dBm.=C2=A0 The USRPs get rather warm =E2=80=94 could this=
 be a
                heat-related failure?=C2=A0 But if so, why just one?</div=
>
              <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                <br>
              </div>
              <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                Any ideas?</div>
              <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                <br>
              </div>
              <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                Thanks.</div>
              <div id=3D"m_2842877924020580040Signature">
                <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                  <br>
                </div>
                <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                  Eugene Grayver, Ph.D.</div>
                <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                  Principal Engineer</div>
                <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                  310-336-1274</div>
              </div>
            </div>
            _______________________________________________<br>
            USRP-users mailing list -- <a
              href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">us=
rp-users@lists.ettus.com</a><br>
            To unsubscribe send an email to <a
              href=3D"mailto:usrp-users-leave@lists.ettus.com"
              target=3D"_blank" moz-do-not-send=3D"true"
              class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettu=
s.com</a><br>
          </div>
        </blockquote>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre wrap=3D"" class=3D"moz-quote-pre">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------Ge2TcimejZqvDF10WqBmGtrK--

--===============7211815242966868492==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7211815242966868492==--
