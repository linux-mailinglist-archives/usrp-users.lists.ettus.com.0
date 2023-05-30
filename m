Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 262DE71722B
	for <lists+usrp-users@lfdr.de>; Wed, 31 May 2023 02:00:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 30A6138480C
	for <lists+usrp-users@lfdr.de>; Tue, 30 May 2023 20:00:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685491215; bh=MPJjUOOXfnAQwZ62S1fL0NyA8+ZtyoGBwTsP0eWQKbw=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=XSYnYGiLkd/odN0ZR2N0zuyxElhosuek8DC7JmJ7PKGKe3AZszSnzAi0dyPc720ne
	 NHf0x88dvN/+Zkat/qKUikedInfE25V/FI70hCbABCdmNe1MndrFOHifqOJfy7EQa/
	 22tupv57FsRE8SXjsZ5Tv8I/AAUO+diCfe6fwCylEUq+PH5S+h7sOziUDubqXU9kVk
	 mtSvTyhMRawPauWZqlDAzarwAfZH8CcFkUNMi9R/rx69JSujPC1aUxSxUJeEd72rD9
	 XNJNwh8E9u2rtiqIqrJKTxUz5lBl9Fz7PLFFxo2OnYP+0WoIhZIpnwE7ibvCfhMohJ
	 DEU7lSHgzwsFw==
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by mm2.emwd.com (Postfix) with ESMTPS id A789F3844EC
	for <usrp-users@lists.ettus.com>; Tue, 30 May 2023 19:59:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mhJDX6bc";
	dkim-atps=neutral
Received: by mail-qt1-f174.google.com with SMTP id d75a77b69052e-3f7a546efb1so28094751cf.2
        for <usrp-users@lists.ettus.com>; Tue, 30 May 2023 16:59:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685491154; x=1688083154;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OJmveO7SMgek0ryBUDZUVTcFzqX9KxdrHIlTlUH4wc0=;
        b=mhJDX6bcv7DmUlpnIcuBUFc9saxwZpnYrBubVh1Io1ekEUXJnla4a5JSUZ8ANym6hL
         EUdZbXJYsdc5NZOy/wKkEznH0EEVL9mYs+OWj35+AZFRHlsctiLJm7Par99OfUaexjKY
         bVNpMG7O28nhsIlLdtAN8pa+5QZBCiiHx0G4xbGWxTzBFsh7/022/VLg+A/RdvVeqlUk
         kNoLNV5Yfe49/YrE+LuM6uVn6S4dQ6h8TBpcHWcxmyLy/21PzRln8T5dBgFIxkQDAsjT
         J5ROKIUjzi5G+n7dvVn6W9MfSvRnm6jvyobPYeCaisC2P55BlZkKv+xwsFJsetJIxje9
         eXBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685491154; x=1688083154;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OJmveO7SMgek0ryBUDZUVTcFzqX9KxdrHIlTlUH4wc0=;
        b=TZkITEW9Js8SbbnuqIIrJR9uOAh/TxKwi9Y1mpVX5rzrQf5bUgYTETrjdM0Kk/+bsG
         vMvJSUBSumu2MEB0HbHkye7/alhzOGpFN2qBAJclmCGlF6pLgHBofZz0/y2Q1yUbo6ap
         YVGzAWDYGFPOT5MkAreymwog1qaeQW73WIy2eowACOSullUsVEbYQq5czXs9hLOgGX+W
         +LNbey9SDIkY927UjS7eqbvPLEbQOIOrrvmtz8xXKrqOtmWvC2EECPgMoJxGLPbvqQDN
         6bLuqpWLQU30Qe40Dqlx1DTyhERpc6F72IsBS/0ao8M7yq8Ddf07iOhbEEWpy9afYDYI
         u8kA==
X-Gm-Message-State: AC+VfDxjS7YjGQJ1CJ1ztsvNoCHZ5O1Aq5oBJR68kN6UqHB7+tzXyEGZ
	IwPmqspcDotP/b5eNqyUCb5XviB8XGmH5JO+
X-Google-Smtp-Source: ACHHUZ5inLjYz2EWj7a/NIhKGnSg4ax2kYWwjzAgiEnQ1vPN7vT6+EPPP0WPR2qpLz7S0ZgnlLRcOg==
X-Received: by 2002:ac8:7f05:0:b0:3f0:ab4e:df6b with SMTP id f5-20020ac87f05000000b003f0ab4edf6bmr3490928qtk.67.1685491154005;
        Tue, 30 May 2023 16:59:14 -0700 (PDT)
Received: from [192.168.2.201] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id ez4-20020a05622a4c8400b003e388264753sm5191190qtb.65.2023.05.30.16.59.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 May 2023 16:59:13 -0700 (PDT)
Message-ID: <1054bb75-9df5-07b8-2a05-1fc72ed10718@gmail.com>
Date: Tue, 30 May 2023 19:59:12 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Brian Padalino <bpadalino@gmail.com>, Mena Ghebranious <mena@chaosinc.com>
References: <W203olqQs1iBI2xG9mGjiw1svSW52XqTjccB72ejEs@lists.ettus.com>
 <7ed5a34a-8862-09ae-edfa-d5ca15947915@gmail.com>
 <JN1P275MB053547F1D25B83244EE59F8795469@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
 <CAL7q81shBqtUzSaHseMO59rq1u3QSxSrA7bCaX-BVZo7FNRLZQ@mail.gmail.com>
 <CANq7nXcTe6FrDNXHiYUKY7VU-47UqdW3PtZj5eafBP84-2HhbA@mail.gmail.com>
 <4da2d23c-0854-582c-a191-deb5476488fe@gmail.com>
 <CANq7nXeVL8ActLms9N5kCAb78ALSrKPBb-agALYJjzNk9Yi9mg@mail.gmail.com>
 <CAEXYVK6JLh_C4cb6GbPYCFxNBv=U3AgUdqP=yBkmSH7Vey4wOQ@mail.gmail.com>
 <CANq7nXf266iBvAARXfrmebaTeZFskaCPwvXHvvWT+Hzg-sVghg@mail.gmail.com>
 <CAEXYVK5NEVExmcf0uhbXjOABwRbbxC+yvY0pZ7dBX22rYom27Q@mail.gmail.com>
 <CANq7nXfUvuDaLbOx_admWoNNsVt1eJN15L65uS-VmniAhh=u1w@mail.gmail.com>
 <CAEXYVK6ONWM8ayhz+V9beCNu56ewAP5_GJtDcY0du2JXJpGa4g@mail.gmail.com>
 <CANq7nXdn4mjih-_YLMm349oJPJZz1tFGeozy9NYc_Xic5wUpdA@mail.gmail.com>
 <CAEXYVK60EFc5V0bWy9=0d5JbAue+cCUzm5wH-gQCASGTAeZX1A@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAEXYVK60EFc5V0bWy9=0d5JbAue+cCUzm5wH-gQCASGTAeZX1A@mail.gmail.com>
Message-ID-Hash: E47DAJADFLOCWIXVVHZE456XBCZXQZIY
X-Message-ID-Hash: E47DAJADFLOCWIXVVHZE456XBCZXQZIY
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jonathon Pendlum <jonathon.pendlum@ettus.com>, Leon Wabeke <LWabeke@csir.co.za>, Rob Kossler <rkossler@nd.edu>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 - GPIO ATR output to TX output delay
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/E47DAJADFLOCWIXVVHZE456XBCZXQZIY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5363235052162151317=="

This is a multi-part message in MIME format.
--===============5363235052162151317==
Content-Type: multipart/alternative;
 boundary="------------faQCrb6D5O0gvr8kkB4TE0F7"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------faQCrb6D5O0gvr8kkB4TE0F7
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 30/05/2023 17:44, Brian Padalino wrote:
> On Tue, May 30, 2023 at 5:32=E2=80=AFPM Mena Ghebranious <mena@chaosinc=
.com>=20
> wrote:
>
>     I apologize, I think I must be missing something.=C2=A0 This=C2=A0i=
s the
>     filter (Xilinx IP) I see implemented in the N320 master code:
>
>     https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/n3x=
x/dboards/rh/n3xx.v#L3431
>
>
> This HBF seems to be external to the DUC, but I doubt it's killing a=20
> bunch of samples from coming out.
>
>
>
>     We are planning on running various sample rates running from 1 to
>     possibly 61.44Msps=C2=A0 - for our current experiment we are using
>     20.480Msps
>
>
> This is the most likely culprit.=C2=A0 Currently you interpolate by 12 =
if=20
> you use a 245.76 Msps master clock rate using the DUC (HBF (x2) -> HBF=20
> (x2) -> CIC (x3) =3D 12).
>
> What you can do is interpolate to 245.76 Msps on the host for TX and=20
> you've got full control down to the sample.
>
> See what happens when you interpolate on the host instead of using the=20
> FPGA to do it for you.=C2=A0 My guess is that it will be closer to what=
 you=20
> want.
>
> Brian
>
The=C2=A0 HBF is used (at least historically) when the effective=20
decimation/interpolation ratio is odd.

Also, a lot of the "logic" (at least, again, historically) of which bits=20
and pieces of the DUC/DDC chain were "in/out" of the
 =C2=A0 "circuit" was decided by the host side, and it would just set som=
e=20
bits in the FPGA registers to "make it so".=C2=A0=C2=A0=C2=A0 But my know=
ledge
 =C2=A0 has drifted quite a bit since RFNoC was introduced.


--------------faQCrb6D5O0gvr8kkB4TE0F7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 30/05/2023 17:44, Brian Padalino
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAEXYVK60EFc5V0bWy9=3D0d5JbAue+cCUzm5wH-gQCASGTAeZX1A@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div dir=3D"ltr">On Tue, May 30, 2023 at 5:32=E2=80=AFPM Mena Ghe=
branious
          &lt;<a href=3D"mailto:mena@chaosinc.com" moz-do-not-send=3D"tru=
e"
            class=3D"moz-txt-link-freetext">mena@chaosinc.com</a>&gt;
          wrote:<br>
        </div>
        <div class=3D"gmail_quote">
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div dir=3D"ltr">I apologize, I think I must be missing
              something.=C2=A0 This=C2=A0is the filter (Xilinx IP) I see
              implemented in the N320 master code:
              <div><br>
              </div>
              <div><a
href=3D"https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/n=
3xx/dboards/rh/n3xx.v#L3431"
                  target=3D"_blank" moz-do-not-send=3D"true"
                  class=3D"moz-txt-link-freetext">https://github.com/Ettu=
sResearch/uhd/blob/master/fpga/usrp3/top/n3xx/dboards/rh/n3xx.v#L3431</a>=
</div>
            </div>
          </blockquote>
          <div><br>
          </div>
          <div>This HBF seems to be external to the DUC, but I doubt
            it's killing a bunch of samples from coming out.</div>
          <div>=C2=A0</div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div dir=3D"ltr">
              <div><br>
              </div>
              <div><br>
              </div>
              <div>We are planning on running various sample rates
                running from 1 to possibly 61.44Msps=C2=A0 - for our curr=
ent
                experiment we are using 20.480Msps</div>
            </div>
          </blockquote>
          <div><br>
          </div>
          <div>This is the most likely culprit.=C2=A0 Currently you
            interpolate by 12 if you use a 245.76 Msps master clock rate
            using the DUC (HBF (x2) -&gt; HBF (x2) -&gt; CIC (x3) =3D 12)=
.</div>
          <div><br>
          </div>
          <div>What you can do is interpolate to 245.76 Msps on the host
            for TX and you've got full control down to the sample.</div>
          <div><br>
          </div>
          <div>See what happens when you interpolate on the host instead
            of using the FPGA to do it for you.=C2=A0 My guess is that it
            will be closer to what you want.</div>
          <div><br>
          </div>
          <div>Brian</div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div class=3D"gmail_quote">
              <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px
                0.8ex;border-left:1px solid
                rgb(204,204,204);padding-left:1ex">
                <div dir=3D"ltr">
                  <div class=3D"gmail_quote">
                    <blockquote class=3D"gmail_quote" style=3D"margin:0px
                      0px 0px 0.8ex;border-left:1px solid
                      rgb(204,204,204);padding-left:1ex">
                      <div class=3D"gmail_quote">
                        <blockquote class=3D"gmail_quote"
                          style=3D"margin:0px 0px 0px
                          0.8ex;border-left:1px solid
                          rgb(204,204,204);padding-left:1ex">
                          <div dir=3D"ltr">
                            <div class=3D"gmail_quote">
                              <blockquote class=3D"gmail_quote"
                                style=3D"margin:0px 0px 0px
                                0.8ex;border-left:1px solid
                                rgb(204,204,204);padding-left:1ex">
                                <div class=3D"gmail_quote">
                                  <blockquote class=3D"gmail_quote"
                                    style=3D"margin:0px 0px 0px
                                    0.8ex;border-left:1px solid
                                    rgb(204,204,204);padding-left:1ex">
                                  </blockquote>
                                </div>
                              </blockquote>
                            </div>
                          </div>
                        </blockquote>
                      </div>
                    </blockquote>
                  </div>
                </div>
              </blockquote>
            </div>
          </blockquote>
        </div>
      </div>
    </blockquote>
    The=C2=A0 HBF is used (at least historically) when the effective
    decimation/interpolation ratio is odd.<br>
    <br>
    Also, a lot of the "logic" (at least, again, historically) of which
    bits and pieces of the DUC/DDC chain were "in/out" of the<br>
    =C2=A0 "circuit" was decided by the host side, and it would just set =
some
    bits in the FPGA registers to "make it so".=C2=A0=C2=A0=C2=A0 But my =
knowledge<br>
    =C2=A0 has drifted quite a bit since RFNoC was introduced.<br>
    <br>
    <br>
  </body>
</html>

--------------faQCrb6D5O0gvr8kkB4TE0F7--

--===============5363235052162151317==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5363235052162151317==--
