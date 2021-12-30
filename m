Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 398BC4818E5
	for <lists+usrp-users@lfdr.de>; Thu, 30 Dec 2021 04:19:02 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 25D19384FBA
	for <lists+usrp-users@lfdr.de>; Wed, 29 Dec 2021 22:19:01 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ll4A9jJ7";
	dkim-atps=neutral
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 421AC384973
	for <usrp-users@lists.ettus.com>; Wed, 29 Dec 2021 22:18:06 -0500 (EST)
Received: by mail-qv1-f42.google.com with SMTP id kd9so20870985qvb.11
        for <usrp-users@lists.ettus.com>; Wed, 29 Dec 2021 19:18:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=6UmH+mvl0T1vKIAAO4eXKRj9BlE9fK8msFA8XYaLp0c=;
        b=ll4A9jJ7zsQQQazAVCNIdig7M3gxW7IubAp7YghVE2Kjgz05+78orIJZy6ZYIPXaeU
         vDm+hz1xV/U5/9xHtAJRNSOrM+nZZafPsFcioVNr5nV6WQz3QbMrHP3KunoV/va/qqoj
         2jd0c45Iy8/t/bPrnlSmXBLcTHgpFpBPT8xGQfiHw+HXdo+fZ7OqD0Xla2eQZQncwe4D
         qR5R+jowiiq2Mmq5tBwPJme2U9efh8ylvy7zEktY12T7pSlCMbi1ifsYp5goqENg+WYh
         yYf6+VvhgutxWpsDSZQ/h19wrzpcIALvWplap+XlhQhXblBujuJ+Vmtk1CRjRgfJOL/Y
         OjpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=6UmH+mvl0T1vKIAAO4eXKRj9BlE9fK8msFA8XYaLp0c=;
        b=iClgIvnfBAPxF/WVQJrbKdCrsmIQSL+qoom99P0W1xVV9tOdg+qz7n1NHzk5H9zIMm
         Fko36uUbVUWWqIzjUXD/o9KC2syHtXB+H2+tsP2dusGMyAYOcvZtFVAiXu5pK25J1+/T
         YD+o/bbr04IscQjomiOO++weuOvfR4rJNRqEB5X+z1aKqedqmB9DQsXub2XagdZZttvV
         lKaRN1f0DOMrEbOiJfDxyIAOuuRRN2igsiR9HCwu2nB5+uhIIbutg2YsC4yqgtzXq/k6
         EJxB6Up9wMqqhfKm8D6YLrlahdjDMAqKnUa0DyzjPr3SQ6/iOEEX/7Y1kJgUCVqzaI+t
         90TA==
X-Gm-Message-State: AOAM532BwRyZBLJUUJsrCfwywmomL5e7gmLskCItfSe8NZ9mz4ZQn+X8
	oSjHLWDA7Gp0MHIYzfx6hsUgoxrrLTc=
X-Google-Smtp-Source: ABdhPJw1qOmWP5OWhvZv63FgGtThyby4O3+9JIbfvwhaOE9n0vEVbgZjhnttdPxGeKhyVWz0+J1Ikg==
X-Received: by 2002:a05:6214:da3:: with SMTP id h3mr26257992qvh.9.1640834285359;
        Wed, 29 Dec 2021 19:18:05 -0800 (PST)
Received: from smtpclient.apple ([2600:4040:4032:5000:2994:df8f:68d5:daf3])
        by smtp.gmail.com with ESMTPSA id d4sm19084634qkn.79.2021.12.29.19.18.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Dec 2021 19:18:05 -0800 (PST)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 29 Dec 2021 22:18:03 -0500
Message-Id: <7DDDD8E6-C74E-4533-A528-A0A7A2063407@gmail.com>
References: <d2b097dd-2a62-773f-c99b-c23b488d042a@gmail.com>
In-Reply-To: <d2b097dd-2a62-773f-c99b-c23b488d042a@gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
X-Mailer: iPhone Mail (19B74)
Message-ID-Hash: 77AJKF7M2KOVRRD5YXJHRQ2EQXXTMJ2M
X-Message-ID-Hash: 77AJKF7M2KOVRRD5YXJHRQ2EQXXTMJ2M
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Robin Coxe <coxe@close-haul.com>, Temir Karakurum <temirkarakurum@gmail.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E330 and rx-only USRPs
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/77AJKF7M2KOVRRD5YXJHRQ2EQXXTMJ2M/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2955419464901250945=="


--===============2955419464901250945==
Content-Type: multipart/alternative; boundary=Apple-Mail-A9464A4B-69FC-4509-8133-58E05711D259
Content-Transfer-Encoding: 7bit


--Apple-Mail-A9464A4B-69FC-4509-8133-58E05711D259
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

That was the QuadRadio!

<end transmission>

> On Dec 29, 2021, at 22:09, Marcus D. Leech <patchvonbraun@gmail.com> wrote=
:
>=20
> =EF=BB=BF
>> On 2021-12-29 21:50, Robin Coxe wrote:
>> The only receive-only USRP product is the TwinRx daughtercard for the X31=
0. =20
> Thanks Robin.  I'd already mentioned this.
>=20
> But there *WAS* a product (not in the NI catalog) many years ago that Ettu=
s was building on an order-by-order basis that was
>   a 4-channel (or was it 8?) RX-only device, using a YiG-based synthesizer=
.  I think it was likely before your time at Ettus/NI.
>=20
> In my guise as a radio astronomer and manager of a radio-astronomy observa=
tory, I'd love a many-channels, brutally-coherent, RX-only
>   device.  But the market is small....
>=20
>=20
>>=20
>> From: Marcus D Leech <patchvonbraun@gmail.com>
>> Sent: Wednesday, December 29, 2021 12:35:25 PM
>> To: Temir Karakurum <temirkarakurum@gmail.com>
>> Cc: USRP-users@lists.ettus.com <USRP-users@lists.ettus.com>
>> Subject: [USRP-users] Re: E330 and rx-only USRPs
>> =20
>> There has never been a. E330 product offering.=20
>>=20
>> Sent from my iPhone
>>=20
>>> On Dec 29, 2021, at 12:33 PM, Temir Karakurum <temirkarakurum@gmail.com>=
 wrote:
>>>=20
>>> =EF=BB=BF
>>> Hi Marcus,
>>>=20
>>> Thanks for promptly replying. Has E330 ever been offered for purchase? I=
f so, has it been discontinued?
>>>=20
>>> Best,
>>> Temir
>>>=20
>>> On Wed, Dec 29, 2021 at 8:31 PM Marcus D Leech <patchvonbraun@gmail.com>=
 wrote:
>>> The TwinRx daughter cards for X310.=20
>>>=20
>>> Sent from my iPhone
>>>=20
>>>> On Dec 29, 2021, at 12:30 PM, Temir Karakurum <temirkarakurum@gmail.com=
> wrote:
>>>>=20
>>>> =EF=BB=BF
>>>> Hi there,
>>>>=20
>>>> I recently came across a presentation by Matt Ettus at grcon16, where h=
e introduces E330 as a receive-only alternative for E-series USRPs. I checke=
d Ettus store as well as googled for some info about E330 but could not find=
 anything useful. Has it ever been offered as a product by Ettus or NI?
>>>>=20
>>>> As a general question, most of my applications are receive-only in natu=
re (spectrum monitoring etc.) and usually Tx channels of the USRPs end up re=
dundant. Is it possible to purchase rx-only devices?
>>>>=20
>>>> Best regards,
>>>> Temir
>>>>=20
>>>>=20
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-A9464A4B-69FC-4509-8133-58E05711D259
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">That was the QuadRadio!<br><br><div dir=3D"=
ltr">&lt;<span class=3D"Apple-style-span" style=3D"-webkit-tap-highlight-col=
or: rgba(26, 26, 26, 0.296875); -webkit-composition-fill-color: rgba(175, 19=
2, 227, 0.230469); -webkit-composition-frame-color: rgba(77, 128, 180, 0.230=
469); ">end transmission&gt;</span></div><div dir=3D"ltr"><br><blockquote ty=
pe=3D"cite">On Dec 29, 2021, at 22:09, Marcus D. Leech &lt;patchvonbraun@gma=
il.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div d=
ir=3D"ltr">=EF=BB=BF
 =20
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"=
>
 =20
 =20
    <div class=3D"moz-cite-prefix">On 2021-12-29 21:50, Robin Coxe wrote:<br=
>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:BY5PR10MB4228FC83777C38EB8B1B0875A=
B459@BY5PR10MB4228.namprd10.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
      <div>
        <div>
          <div dir=3D"ltr" style=3D"color: rgb(0, 0, 0); background-color:
            rgb(255, 255, 255);">
            The only receive-only USRP product is the TwinRx
            daughtercard for the X310.&nbsp; <br>
          </div>
        </div>
      </div>
    </blockquote>
    Thanks Robin.&nbsp; I'd already mentioned this.<br>
    <br>
    But there *WAS* a product (not in the NI catalog) many years ago
    that Ettus was building on an order-by-order basis that was<br>
    &nbsp; a 4-channel (or was it 8?) RX-only device, using a YiG-based
    synthesizer.&nbsp; I think it was likely before your time at Ettus/NI.<b=
r>
    <br>
    In my guise as a radio astronomer and manager of a radio-astronomy
    observatory, I'd love a many-channels, brutally-coherent, RX-only<br>
    &nbsp; device.&nbsp; But the market is small....<br>
    <br>
    <br>
    <blockquote type=3D"cite" cite=3D"mid:BY5PR10MB4228FC83777C38EB8B1B0875A=
B459@BY5PR10MB4228.namprd10.prod.outlook.com">
      <div>
        <div>
        </div>
        <div id=3D"ms-outlook-mobile-signature">
        </div>
      </div>
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" f=
ace=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Marcus
          D Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvon=
braun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
          <b>Sent:</b> Wednesday, December 29, 2021 12:35:25 PM<br>
          <b>To:</b> Temir Karakurum <a class=3D"moz-txt-link-rfc2396E" href=
=3D"mailto:temirkarakurum@gmail.com">&lt;temirkarakurum@gmail.com&gt;</a><br=
>
          <b>Cc:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:US=
RP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:USRP-users@lists=
.ettus.com">&lt;USRP-users@lists.ettus.com&gt;</a><br>
          <b>Subject:</b> [USRP-users] Re: E330 and rx-only USRPs</font>
        <div>&nbsp;</div>
      </div>
      <div dir=3D"auto">There has never been a. E330 product offering.&nbsp;=
<br>
        <br>
        <div dir=3D"ltr">Sent from my iPhone</div>
        <div dir=3D"ltr"><br>
          <blockquote type=3D"cite">On Dec 29, 2021, at 12:33 PM, Temir
            Karakurum <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:temi=
rkarakurum@gmail.com">&lt;temirkarakurum@gmail.com&gt;</a> wrote:<br>
            <br>
          </blockquote>
        </div>
        <blockquote type=3D"cite">
          <div dir=3D"ltr">=EF=BB=BF
            <div dir=3D"ltr">
              <div>Hi Marcus,</div>
              <div><br>
              </div>
              <div>Thanks for promptly replying. Has E330 ever been
                offered for purchase? If so, has it been discontinued?</div>=

              <div><br>
              </div>
              <div>Best,</div>
              <div>Temir</div>
            </div>
            <br>
            <div class=3D"x_gmail_quote">
              <div dir=3D"ltr" class=3D"x_gmail_attr">On Wed, Dec 29, 2021
                at 8:31 PM Marcus D Leech &lt;<a href=3D"mailto:patchvonbrau=
n@gmail.com" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">patchv=
onbraun@gmail.com</a>&gt;
                wrote:<br>
              </div>
              <blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px
                0px 0.8ex; border-left:1px solid rgb(204,204,204);
                padding-left:1ex">
                <div dir=3D"auto">The TwinRx daughter cards for X310.&nbsp;<=
br>
                  <br>
                  <div dir=3D"ltr">Sent from my iPhone</div>
                  <div dir=3D"ltr"><br>
                    <blockquote type=3D"cite">On Dec 29, 2021, at 12:30
                      PM, Temir Karakurum &lt;<a href=3D"mailto:temirkarakur=
um@gmail.com" target=3D"_blank" moz-do-not-send=3D"true" class=3D"moz-txt-li=
nk-freetext">temirkarakurum@gmail.com</a>&gt;
                      wrote:<br>
                      <br>
                    </blockquote>
                  </div>
                  <blockquote type=3D"cite">
                    <div dir=3D"ltr">=EF=BB=BF
                      <div dir=3D"ltr">Hi there,
                        <div><br>
                        </div>
                        <div>I recently came across a presentation by
                          Matt Ettus at <a href=3D"https://youtu.be/kEAkIfWV=
iQo?t=3D1254" target=3D"_blank" moz-do-not-send=3D"true">
                            grcon16</a>, where he introduces E330 as a
                          receive-only alternative for E-series USRPs. I
                          checked Ettus store as well as googled for
                          some info about E330 but could not find
                          anything useful. Has it ever been offered as a
                          product by Ettus or NI?</div>
                        <div><br>
                        </div>
                        <div>As a general question, most of my
                          applications are receive-only in nature
                          (spectrum monitoring etc.) and usually Tx
                          channels of the USRPs end up redundant. Is it
                          possible to purchase rx-only devices?</div>
                        <div><br>
                        </div>
                        <div>Best regards,</div>
                        <div>Temir</div>
                        <div><br>
                        </div>
                        <div><br>
                        </div>
                      </div>
                      <span>_______________________________________________<=
/span><br>
                      <span>USRP-users mailing list -- <a href=3D"mailto:usr=
p-users@lists.ettus.com" target=3D"_blank" moz-do-not-send=3D"true" class=3D=
"moz-txt-link-freetext">
                          usrp-users@lists.ettus.com</a></span><br>
                      <span>To unsubscribe send an email to <a href=3D"mailt=
o:usrp-users-leave@lists.ettus.com" target=3D"_blank" moz-do-not-send=3D"tru=
e" class=3D"moz-txt-link-freetext">
                          usrp-users-leave@lists.ettus.com</a></span><br>
                    </div>
                  </blockquote>
                </div>
              </blockquote>
            </div>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
 =20
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></body></html>=

--Apple-Mail-A9464A4B-69FC-4509-8133-58E05711D259--

--===============2955419464901250945==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2955419464901250945==--
