Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E9768813FBA
	for <lists+usrp-users@lfdr.de>; Fri, 15 Dec 2023 03:28:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D978F3850EB
	for <lists+usrp-users@lfdr.de>; Thu, 14 Dec 2023 21:28:07 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702607287; bh=T0pwBbK6pFkSiDGK7SeKcqlj+w3p2cBBEFayM6S4Wo0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=RA7uHSFe6L1kR8EjIH+RhV7QJkWAasqSWF32hQx48WGzZJUZ0P54AW5+xKUu1NC+8
	 1EPj7Rdr4FdUFLMaMhyhgAN3f2hlVWMgqgQlu53nMN/1NoASv6MH3s532GF+WxsGH/
	 lW+ckoIWz3X9sRIzMfKX/q5o/XwSwquPzz20AKH2QOxhlxN7sBsMxlA2hT+KGX/Lxf
	 W/e7hGKic0vbbY3eFCXZFnc509VIwO0HIeFkWqpj9DByHc/g/b8BLlVwgo3Ix8FvJj
	 iCK49eNpLG5aubMAJX5OK9w3veEU/1+YGktCZ9WipVd5GR9QwtdqHaCKfQVlUYzhOd
	 fY3U3xweCU1wg==
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	by mm2.emwd.com (Postfix) with ESMTPS id CBFCC3850C0
	for <usrp-users@lists.ettus.com>; Thu, 14 Dec 2023 21:27:56 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="cpEmKzyJ";
	dkim-atps=neutral
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-425c9cd7dd2so1072621cf.2
        for <usrp-users@lists.ettus.com>; Thu, 14 Dec 2023 18:27:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702607276; x=1703212076; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HG4WvOgplwFoJOo1d90iLsBGiw3TimCnesG2x9jUnw0=;
        b=cpEmKzyJAOuuDMPjdBJhwWB6E5w6rK2+wuUmlA/M37LbuL/2WhLAuWe7uhver3YPpz
         e31dG4V3xrbGwNT+tISlppUn8XBa2UMQkgUB/kGTgwn/LwEuWgUSQImIoP9X6JYeazWY
         kWN1DNjMOxSeywLIpcvizVXAj8pNGZHFSlrX/DBNJejqtbiA/vJim4fSBQHkS/IiNG7T
         AE68BcMwYrKa2V3gxWfi8a0CsRvwNGv0QG2klLl97Zod79zbzRQ1F8IxLvC/Z2cLTBvl
         DgPASnobWFvOZcAibYXFyvdrWPwNN9AYn4JIN9w3oWOwfEIu48l812dnhofkrh1YWytL
         UnGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702607276; x=1703212076;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=HG4WvOgplwFoJOo1d90iLsBGiw3TimCnesG2x9jUnw0=;
        b=VT0X8FnVXGA2tcM34c8f634xmjf8ZLLPLSWP4AWar81Sx0OODOBrQWe8HclkbgRo6d
         5EcCqzW1bEORlfV8qAqDMiVUF+lS36cENzMOLz840uJlJPYsAokWCEq9m7YmwN3YzVbD
         pAOEVOxNEgITI+b+zcKKRO2eAS+GoEIjS8PzFXzomZD4uPwhedn4/3aSriuY7O8GI+mm
         sqUVmisDbahzNn0R6+GAFWiDg+vMIvPKCayXWQ8lMLXv5OVLxODpen5l0eyJGKOZ3cN7
         tMN0RM+BIOgkX4JT9Bky51OZy2UOqKg0EDmuugfJn87INMVYarNvVWrDKya3CQ1rVvxC
         TUsw==
X-Gm-Message-State: AOJu0YzIEcXVoiFTg7t52BrU9w5qv8eUAQUuPQcVTd+jkygbjE0YUFiU
	z2YSR2Ql8x3ed5ESixxHB+Mb7vwj+tc=
X-Google-Smtp-Source: AGHT+IGZWCqBHwxZuol+IkMmTvL53ENbALA0qt2gC+FyPpTZYZ4nTGpCZpF3XO3tvhs6KLNtYwXRPg==
X-Received: by 2002:a05:622a:20c:b0:423:6e80:b7d0 with SMTP id b12-20020a05622a020c00b004236e80b7d0mr10659295qtx.45.1702607275889;
        Thu, 14 Dec 2023 18:27:55 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id r5-20020ac87945000000b00423ea1b31b3sm6246270qtt.66.2023.12.14.18.27.55
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Dec 2023 18:27:55 -0800 (PST)
Message-ID: <357553b0-28a2-459d-9bac-49490836b6be@gmail.com>
Date: Thu, 14 Dec 2023 21:27:46 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAKhiL6XLB_-aFw24M7s=r-60jEHU=BHLo8JKafQQhAA0HOQHiw@mail.gmail.com>
 <CANvw1+Q-WcRPAK-M-xJrjaPmj-wgtAwQfTpvr55SRLU9douEdQ@mail.gmail.com>
 <CAKhiL6WAtkPFO3N=4yBSULM5pOmLiEED4zmN2tNsz9R3wOJdLA@mail.gmail.com>
 <CANvw1+QK+=OJd4CJAE_xbBDr2ZASYHq7UMZ_4SStW+mvuUYE3g@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CANvw1+QK+=OJd4CJAE_xbBDr2ZASYHq7UMZ_4SStW+mvuUYE3g@mail.gmail.com>
Message-ID-Hash: KKO2BRRO36C3VE7NLZ3MYFZ2LGVHIMVG
X-Message-ID-Hash: KKO2BRRO36C3VE7NLZ3MYFZ2LGVHIMVG
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Change UHD Version
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KKO2BRRO36C3VE7NLZ3MYFZ2LGVHIMVG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2746438019166903412=="

This is a multi-part message in MIME format.
--===============2746438019166903412==
Content-Type: multipart/alternative;
 boundary="------------w8hGu5Az1dX40GsPLee90zSa"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------w8hGu5Az1dX40GsPLee90zSa
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 14/12/2023 19:21, Anil Gurses via USRP-users wrote:
>
>     It fails when I was trying it.
>
>
> Can you give more information? What is the exact error?
>
>     Did you have to delete the build folder then recreate it for a
>     successful installation?
>
> You can try deleting and recreating it again. It shouldn't matter. If=20
> you follow the instructions I shared, there shouldn't be any build=20
> folder since you'll be cloning from scratch.
>
> PS. Don't forget to do `sudo ldconfig` after your installation.
>
I'll note that on Ubuntu 22.04 (which I think is the OS here), UHD is=20
already packaged for the OS, and available at version:

UHD 4.1.0.5-3


No building from source required.=C2=A0=C2=A0=C2=A0=C2=A0 We use an X310 =
on a machine at the=20
observatory with *nothing* build from source on
 =C2=A0 the Ubuntu 22.04 host machine.


>
> A.
>
> On Thu, Dec 14, 2023 at 6:18=E2=80=AFPM LoyCurtis Smith <ljsmith9@ncsu.=
edu> wrote:
>
>     Thanks Anil.
>
>     It fails when I was trying it. Did you have to delete the build
>     folder then recreate it for a successful installation?
>
>     V/r
>
>     LoyCurtis Smith
>
>
>     On Thu, Dec 14, 2023 at 5:29=E2=80=AFPM Anil Gurses <agurses@ncsu.e=
du> wrote:
>
>         Hi LoyCurtis,
>
>         You can install different version of UHD by changing your
>         branch to the version's tag on the GitHub repository as shown
>         below,
>
>         ```
>         git clone https://github.com/EttusResearch/uhd.git
>         git checkout tags/v4.0.0.0
>         ...
>         ```
>         With these steps, you change your branch to a specific version
>         release. Then you need to build it again as usual.
>
>         Let me know if you have any questions.
>
>         A.
>
>         On Thu, Dec 14, 2023 at 5:21=E2=80=AFPM LoyCurtis Smith via USR=
P-users
>         <usrp-users@lists.ettus.com> wrote:
>
>             Since Ubuntu 18.04 is EOL, my school upgraded my lab
>             systems to Ubuntu 22.04. Since upgrading to Ubuntu 22.04,
>             I have been unable to connect to my USRP x310s via
>             "*uhd_find_devices*." I can only PING them, and I can only
>             communicate with them via UHD when explicitly stating the
>             IP Address of my USRP. I was able to communicate with the
>             devices via UHD v
>
>             While troubleshooting what is blocking the traffic with my
>             IT staff, I am trying to change the UHD version from 4.5
>             to UHD version 4.0 to see if it changes anything. However,
>             I do not see any instructions on installing a different
>             UHD version. I installed UHD from source following the NI
>             build guide
>             (https://files.ettus.com/manual/page_build_guide.html).
>
>             Please assist.
>
>             V/r
>
>             LoyCurtis Smith
>             _______________________________________________
>             USRP-users mailing list -- usrp-users@lists.ettus.com
>             To unsubscribe send an email to
>             usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------w8hGu5Az1dX40GsPLee90zSa
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 14/12/2023 19:21, Anil Gurses via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CANvw1+QK+=3DOJd4CJAE_xbBDr2ZASYHq7UMZ_4SStW+mvuUYE3g@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">It
          fails when I was trying it. <br>
        </blockquote>
        <div><br>
        </div>
        <div>Can you give more information? What is the exact error?<br>
        </div>
        <div><br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
          <div>Did you have to delete the build folder then recreate it
            for a successful installation?=C2=A0 <br>
          </div>
        </blockquote>
        <div>You can try deleting and recreating it again. It shouldn't
          matter. If you follow the instructions I shared, there
          shouldn't be any build folder since you'll be cloning from
          scratch.</div>
        <div><br>
        </div>
        <div>PS. Don't forget to do `sudo ldconfig` after your
          installation. <br>
        </div>
        <div><br>
        </div>
      </div>
    </blockquote>
    I'll note that on Ubuntu 22.04 (which I think is the OS here), UHD
    is already packaged for the OS, and available at version:<br>
    <br>
    UHD 4.1.0.5-3<br>
    <br>
    <br>
    No building from source required.=C2=A0=C2=A0=C2=A0=C2=A0 We use an X=
310 on a machine at
    the observatory with *nothing* build from source on<br>
    =C2=A0 the Ubuntu 22.04 host machine.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CANvw1+QK+=3DOJd4CJAE_xbBDr2ZASYHq7UMZ_4SStW+mvuUYE3g@mail.gm=
ail.com">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>A.<br>
        </div>
        <div>=C2=A0</div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Dec 14, 2023 at
          6:18=E2=80=AFPM LoyCurtis Smith &lt;<a href=3D"mailto:ljsmith9@=
ncsu.edu"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">ljsm=
ith9@ncsu.edu</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
          <div dir=3D"ltr">
            <div>Thanks Anil.=C2=A0</div>
            <div><br>
            </div>
            <div>It fails when I was trying it. Did you have to delete
              the build folder then recreate it for a successful
              installation?=C2=A0</div>
            <div>
              <div dir=3D"ltr" class=3D"gmail_signature">
                <div dir=3D"ltr">
                  <div>
                    <div dir=3D"ltr"><font color=3D"#073763"><br>
                      </font></div>
                    <div dir=3D"ltr"><font color=3D"#073763">V/r</font>
                      <div><span
                          style=3D"background-color:rgb(255,255,255)"><fo=
nt
                            color=3D"#073763"><br>
                          </font></span></div>
                      <div><span
                          style=3D"background-color:rgb(255,255,255)"><fo=
nt
                            color=3D"#073763">LoyCurtis Smith</font></spa=
n></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <br>
          </div>
          <br>
          <div class=3D"gmail_quote">
            <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Dec 14, 2023 at
              5:29=E2=80=AFPM Anil Gurses &lt;<a href=3D"mailto:agurses@n=
csu.edu"
                target=3D"_blank" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">agurses@ncsu.edu</a>&gt;
              wrote:<br>
            </div>
            <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
              <div dir=3D"ltr">
                <div>Hi LoyCurtis,</div>
                <div><br>
                </div>
                <div>You can install different version of UHD by
                  changing your branch to the version's tag on the
                  GitHub repository as shown below,<br>
                </div>
                <div><br>
                </div>
                <div>```<br>
                </div>
                <div>git clone <a
                    href=3D"https://github.com/EttusResearch/uhd.git"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">https://github.com/Et=
tusResearch/uhd.git</a>
                  <br>
                </div>
                <div>git checkout tags/v4.0.0.0 <br>
                </div>
                <div>... <br>
                </div>
                <div>```</div>
                <div>With these steps, you change your branch to a
                  specific version release. Then you need to build it
                  again as usual.<br>
                </div>
                <div><br>
                </div>
                <div>Let me know if you have any questions.<br>
                </div>
                <div><br>
                </div>
                <div>A.<br>
                </div>
              </div>
              <br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Dec 14, 202=
3
                  at 5:21=E2=80=AFPM LoyCurtis Smith via USRP-users &lt;<=
a
                    href=3D"mailto:usrp-users@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">usrp-users@lists.ettu=
s.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                  <div dir=3D"ltr">
                    <div>Since Ubuntu 18.04 is EOL, my school upgraded
                      my lab systems to Ubuntu 22.04. Since upgrading to
                      Ubuntu 22.04, I have been unable to connect to my
                      USRP x310s via "<b>uhd_find_devices</b>." I can
                      only PING them, and I can only communicate with
                      them via UHD when explicitly stating the IP
                      Address of my USRP. I was able to communicate with
                      the devices via UHD v <br>
                      <br>
                      While troubleshooting what is blocking the traffic
                      with my IT staff, I am trying to change the UHD
                      version from 4.5 to UHD version 4.0 to see if it
                      changes anything. However, I do not see any
                      instructions on installing a different UHD
                      version. I installed UHD from source following the
                      NI build guide (<a
href=3D"https://files.ettus.com/manual/page_build_guide.html"
                        target=3D"_blank" moz-do-not-send=3D"true"
                        class=3D"moz-txt-link-freetext">https://files.ett=
us.com/manual/page_build_guide.html</a>).=C2=A0</div>
                    <div><br>
                    </div>
                    <div>Please assist.=C2=A0<br clear=3D"all">
                      <div>
                        <div dir=3D"ltr" class=3D"gmail_signature">
                          <div dir=3D"ltr">
                            <div>
                              <div dir=3D"ltr"><font color=3D"#073763"><b=
r>
                                </font></div>
                              <div dir=3D"ltr"><font color=3D"#073763">V/=
r</font>
                                <div><span
style=3D"background-color:rgb(255,255,255)"><font color=3D"#073763"><br>
                                    </font></span></div>
                                <div><span
style=3D"background-color:rgb(255,255,255)"><font color=3D"#073763">LoyCu=
rtis
                                      Smith</font></span></div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  _______________________________________________<br>
                  USRP-users mailing list -- <a
                    href=3D"mailto:usrp-users@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">usrp-users@lists.ettu=
s.com</a><br>
                  To unsubscribe send an email to <a
                    href=3D"mailto:usrp-users-leave@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">usrp-users-leave@list=
s.ettus.com</a><br>
                </blockquote>
              </div>
            </blockquote>
          </div>
        </blockquote>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
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

--------------w8hGu5Az1dX40GsPLee90zSa--

--===============2746438019166903412==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2746438019166903412==--
