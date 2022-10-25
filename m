Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A180360D2A2
	for <lists+usrp-users@lfdr.de>; Tue, 25 Oct 2022 19:41:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C490E38092C
	for <lists+usrp-users@lfdr.de>; Tue, 25 Oct 2022 13:41:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666719684; bh=QSAMI1UwUS9m1DVrKsnwFHt1dbNeiwC0CYdD5Ix9WT4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=CUZlL6mmD7X8pKjusvMihKnCMiSn7FqxLHJwMw73HoUkorDGwLqyBuE5dAGxNBybP
	 QwJBiWwMdhrN9+9atbdhEYt3kEVRYixhO7LzDHi/RJaTQs0x59NldmopzdZaWY/Ajt
	 TF7xzPlSTzR1HiTfXQTdCbsY3MYadMF3Q88XSJIGayR2SFTBVQmvLGZhK6YSs1B5Ht
	 jAsrdcBFLrTaemQRuEIUI+6sGvzTxMdXP84g2ZAhA0F1dFb4fiMkW2Ziis7Ft++jx/
	 0KH1nQmf9Fh/MuNGfp3oQJuxt7f8U5AJsAPk0LEXJngboBmY/LIJ+RFvG18liz0nBN
	 jArWInALi2nYQ==
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 03DF5380D16
	for <usrp-users@lists.ettus.com>; Tue, 25 Oct 2022 13:37:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="Jnd7QXng";
	dkim-atps=neutral
Received: by mail-wr1-f43.google.com with SMTP id z14so8832290wrn.7
        for <usrp-users@lists.ettus.com>; Tue, 25 Oct 2022 10:37:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zve4coKkM7x4tBdbU5xNqCkiPlt8W5Ftg2+/uJAqnKs=;
        b=Jnd7QXngg4GggNf1sL+QdeTiu/wJ6I0gbELOP6B4dRfXMe4uv2/ft+wZz8qHg8IWJ2
         H69GFhgr/LmCtEvuUc1R/LrRWifc6xpO0x93CybJ3JxLfg/0q9NuI3Co2TSmbiMY01J+
         Nra4lViP8LPSH4Gljqlrj3KvXo1O+EaCIl+NkoTAclJnWE/JC82lVPmNULo9F09z6FXa
         QMUvYPCBEocEa6fUPJPEaFaoXazMGsYw2oBfy9Vz9PuZ3uvBwcWr/0CJO+TS02uAxXhW
         bUkORr9FVbPeTSCi0uli5atcjL+xkTgsfueOiASVFq8w8lPyxKJPywFPm3bKnsmYKWXY
         JySA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Zve4coKkM7x4tBdbU5xNqCkiPlt8W5Ftg2+/uJAqnKs=;
        b=KQAdla8yqRMeEwPdFsJ0RI4nu2pcOZvTwZ7pSqia5JausaR/ou/L6kVSTIa6diaKCM
         UddaC8tflqiwkbEJIrWQREqVubK58OlTLGn7zoz+p1RJ/IGQ0Tl42/1YpLEne47qDk5R
         PDbP5mol72eg1lohyOW0i1n7mZoml7d/tNm1aBIBgcpc6eI4WZXgmAZejZx7+owe6E2o
         ihg59fSwMGUeJ8zbDHHPwWs/RPqMgAIZmcmJ1vA1L35rdntH3butwQosBJ6FW7Wb1n7O
         8oRQyB2+JLkYQlFoMgZ//5hHCWqqFqzQW/oxWh80P+iQRI1Kj9HZ3TaCOA84WIloaPBa
         KuXw==
X-Gm-Message-State: ACrzQf3pB67xfE8yNS/FUafGCMu/MN0sJerxI2D5xXNPPmVD+XCcEw3K
	Sknfn54KqUb9XebDtVQDiovAk7BMe1B4R6CP
X-Google-Smtp-Source: AMsMyM7zu7FNjfUOTR3LULJCy/Lf5mazReOBG0SZDIV6XciZ4MO4iYecLqccVli4og3GaHki6I5hiQ==
X-Received: by 2002:a5d:6711:0:b0:236:721a:7e81 with SMTP id o17-20020a5d6711000000b00236721a7e81mr7483804wru.502.1666719428833;
        Tue, 25 Oct 2022 10:37:08 -0700 (PDT)
Received: from ?IPV6:2001:9e8:387e:6f00:5bc8:3cc3:e10b:748e? ([2001:9e8:387e:6f00:5bc8:3cc3:e10b:748e])
        by smtp.gmail.com with ESMTPSA id d14-20020a05600c34ce00b003b31c560a0csm3286671wmq.12.2022.10.25.10.37.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Oct 2022 10:37:08 -0700 (PDT)
Message-ID: <920624f2-cffd-261d-669f-537eb64a5897@ettus.com>
Date: Tue, 25 Oct 2022 19:37:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Content-Language: en-US
To: JORGE GONZALEZ ORELLANA <jorge.gonzalez.o@mail.pucv.cl>,
 usrp-users <usrp-users@lists.ettus.com>
References: <CAFFpLrFJik1tS0AdEJ=ZGFMg0pWK7isojD46U4HVzKoxX95yow@mail.gmail.com>
 <043bb421-f8b3-e0b0-1280-053d892613bf@gmail.com>
 <7612fec0-4dda-4bfd-9f46-f9314d28324b@ettus.com>
 <CAFFpLrGZe_XAvoD8Fb2a0Oc8RohyBgYXarQ=m8NdEfdp+eW1JA@mail.gmail.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <CAFFpLrGZe_XAvoD8Fb2a0Oc8RohyBgYXarQ=m8NdEfdp+eW1JA@mail.gmail.com>
Message-ID-Hash: U74T6PBRRRUWCB5NRAPCLUYDFHGSLAKM
X-Message-ID-Hash: U74T6PBRRRUWCB5NRAPCLUYDFHGSLAKM
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: gmp and mpir missing package when Cross-Compiling gr-ettus
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/U74T6PBRRRUWCB5NRAPCLUYDFHGSLAKM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6137032384829416315=="

This is a multi-part message in MIME format.
--===============6137032384829416315==
Content-Type: multipart/alternative;
 boundary="------------fPnKr0ZBztyHWwYFrMQIx0uw"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------fPnKr0ZBztyHWwYFrMQIx0uw
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi Jorge,

hope you don't mind me replying on the list itself - as this is really ju=
st the same email=20
as before :)

So, yes, you'll need one of gmp or mpir. But these should be there, since=
 you already seem=20
to have built GNU Radio for the ARM target, right?

That's what's confusing me.

Best regards,
Marcus

On 25.10.22 19:20, JORGE GONZALEZ ORELLANA wrote:
> sure, here is the text of the screenshot:
>
> {{{
> uno@uno-laptop:~$ =C2=A0.=20
> ~/rfnoc/src/e3xx_e310_sdk_default-v4.2.0.1/OE_SDK/environment-setup-cor=
texa9t2hf-neon-oe-linux-gnueabi
> Your environment is misconfigured, you probably need to 'unset LD_LIBRA=
RY_PATH'
> but please check why this was set in the first place and that it's safe=
 to unset.
> The SDK will not operate correctly in most cases when LD_LIBRARY_PATH i=
s set.
> For more references see:
> http://tldp.org/HOWTO/Program-Library-HOWTO/shared-libraries.html#AEN80
> http://xahlee.info/UnixResource_dir/_/ldpath.html
> uno@uno-laptop:~$ ^C
> uno@uno-laptop:~$ unset LD_LIBRARY_PATH
> uno@uno-laptop:~$ =C2=A0.=20
> ~/rfnoc/src/e3xx_e310_sdk_default-v4.2.0.1/OE_SDK/environment-setup-cor=
texa9t2hf-neon-oe-linux-gnueabi
> uno@uno-laptop:~$ which cmake
> /home/uno/rfnoc/src/e3xx_e310_sdk_default-v4.2.0.1/OE_SDK/sysroots/x86_=
64-oesdk-linux/usr/bin/cmake
> uno@uno-laptop:~$ echo $CC
> arm-oe-linux-gnueabi-gcc -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=3D=
cortex-a9=20
> --sysroot=3D/home/uno/rfnoc/src/e3xx_e310_sdk_default-v4.2.0.1/OE_SDK/s=
ysroots/cortexa9t2hf-neon-oe-linux-gnueabi
> uno@uno-laptop:~$ gnuradio --version
> bash: gnuradio: orden no encontrada
> uno@uno-laptop:~$ gnuradio-config-info --version
> 3.8.5.0
> uno@uno-laptop:~$ cd ~/rfnoc/src/gr-ettus/build-arm
> uno@uno-laptop:~/rfnoc/src/gr-ettus/build-arm$ cmake=20
> -DCMAKE_TOOLCHAIN_FILE=3D~/rfnoc/src/gnuradio/cmake/Toolchains/oe-sdk_c=
ross.cmake=20
> -DCMAKE_INSTALL_PREFIX=3D/usr ..
> -- Build type not specified: defaulting to release.
> -- Checking for module 'gmp'
> -- =C2=A0 No package 'gmp' found
> -- Checking for module 'mpir >=3D 3.0'
> -- =C2=A0 No package 'mpir' found
> -- Could NOT find MPIR (missing: MPIRXX_LIBRARY MPIR_LIBRARY MPIR_INCLU=
DE_DIR)
> -- User set python executable=20
> /__w/83/build/tmp-glibc/work/cortexa9t2hf-neon-oe-linux-gnueabi/gnuradi=
o/3.8.3.0-r0/recipe-sysroot-native/usr/bin/python3-native/python3
> CMake Error at=20
> /home/uno/rfnoc/src/e3xx_e310_sdk_default-v4.2.0.1/OE_SDK/sysroots/cort=
exa9t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/gnuradio/GrPython.cmake:40=20
> (if):
> =C2=A0 if given arguments:
>
> =C2=A0 =C2=A0 "VERSION_EQUAL" "3"
>
> =C2=A0 Unknown arguments specified
> Call Stack (most recent call first):
> /home/uno/rfnoc/src/e3xx_e310_sdk_default-v4.2.0.1/OE_SDK/sysroots/cort=
exa9t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/gnuradio/GnuradioConfig.cmak=
e:51=20
> (include)
> =C2=A0 CMakeLists.txt:59 (find_package)
>
>
> -- Configuring incomplete, errors occurred!
> See also "/home/uno/rfnoc/src/gr-ettus/build-arm/CMakeFiles/CMakeOutput=
.log".
> See also "/home/uno/rfnoc/src/gr-ettus/build-arm/CMakeFiles/CMakeError.=
log".
> uno@uno-laptop:~/rfnoc/src/gr-ettus/build-arm$
> }}}
>
> El mar, 25 oct 2022 a las 14:14, Marcus M=C3=BCller (<marcus.mueller@et=
tus.com>) escribi=C3=B3:
>
>     Hi Jorge,
>
>     I sadly can't read your screenshot. Would you mind Copy and Pasting=
 the text?
>     GMP and MPIR are the same thing. You only need one of them, not bot=
h!
>
>     Best regards,
>     Marcus
>
>
>     On 25.10.22 18:57, Marcus D. Leech wrote:
>     > On 2022-10-25 12:17, JORGE GONZALEZ ORELLANA via GNU Radio, the F=
ree & Open-Source
>     Toolkit
>     > for Software Radio wrote:
>     >> hi, i'm trying=C2=A0to install a usrp E312 using the follow guid=
e:
>     >>
>     >> {{{
>     >>
>     https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Buildi=
ng_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source#Cross-Compiling_gr-ettus
>     >> }}}
>     >>
>     >> when i get to the cross-compiling gr-ettus step i get this error=
:
>     >>
>     >> image.png
>     >>
>     >> I make sure to set the environment=C2=A0correctly to use the SDK=
, and as far as i
>     know, the
>     >> gmp and mpir package=C2=A0are installed, so if someone can help =
me, i will appreciate
>     it a lot.
>     >>
>     >> thanks for your time
>     >>
>     >> JGO
>     > Are those two packages installed into your *HOST* environment or =
your *CROSS DEV*
>     > environment?
>     >
>     >
>
--------------fPnKr0ZBztyHWwYFrMQIx0uw
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hi Jorge,</p>
    <p>hope you don't mind me replying on the list itself - as this is
      really just the same email as before :)</p>
    <p>So, yes, you'll need one of gmp or mpir. But these should be
      there, since you already seem to have built GNU Radio for the ARM
      target, right?</p>
    <p>That's what's confusing me.</p>
    <p>Best regards,<br>
      Marcus<br>
    </p>
    <div class=3D"moz-cite-prefix">On 25.10.22 19:20, JORGE GONZALEZ
      ORELLANA wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAFFpLrGZe_XAvoD8Fb2a0Oc8RohyBgYXarQ=3Dm8NdEfdp+eW1JA@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">sure, here is the text of the screenshot:
        <div><br>
        </div>
        <div>{{{</div>
        <div>uno@uno-laptop:~$ =C2=A0.
~/rfnoc/src/e3xx_e310_sdk_default-v4.2.0.1/OE_SDK/environment-setup-corte=
xa9t2hf-neon-oe-linux-gnueabi<br>
          Your environment is misconfigured, you probably need to 'unset
          LD_LIBRARY_PATH'<br>
          but please check why this was set in the first place and that
          it's safe to unset.<br>
          The SDK will not operate correctly in most cases when
          LD_LIBRARY_PATH is set.<br>
          For more references see:<br>
          =C2=A0 <a
href=3D"http://tldp.org/HOWTO/Program-Library-HOWTO/shared-libraries.html=
#AEN80"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">http=
://tldp.org/HOWTO/Program-Library-HOWTO/shared-libraries.html#AEN80</a><b=
r>
          =C2=A0 <a href=3D"http://xahlee.info/UnixResource_dir/_/ldpath.=
html"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">http=
://xahlee.info/UnixResource_dir/_/ldpath.html</a><br>
          uno@uno-laptop:~$ ^C<br>
          uno@uno-laptop:~$ unset LD_LIBRARY_PATH<br>
          uno@uno-laptop:~$ =C2=A0.
~/rfnoc/src/e3xx_e310_sdk_default-v4.2.0.1/OE_SDK/environment-setup-corte=
xa9t2hf-neon-oe-linux-gnueabi<br>
          uno@uno-laptop:~$ which cmake<br>
/home/uno/rfnoc/src/e3xx_e310_sdk_default-v4.2.0.1/OE_SDK/sysroots/x86_64=
-oesdk-linux/usr/bin/cmake<br>
          uno@uno-laptop:~$ echo $CC<br>
          arm-oe-linux-gnueabi-gcc -mthumb -mfpu=3Dneon -mfloat-abi=3Dhar=
d
          -mcpu=3Dcortex-a9
--sysroot=3D/home/uno/rfnoc/src/e3xx_e310_sdk_default-v4.2.0.1/OE_SDK/sys=
roots/cortexa9t2hf-neon-oe-linux-gnueabi<br>
          uno@uno-laptop:~$ gnuradio --version<br>
          bash: gnuradio: orden no encontrada<br>
          uno@uno-laptop:~$ gnuradio-config-info --version<br>
          3.8.5.0<br>
          uno@uno-laptop:~$ cd ~/rfnoc/src/gr-ettus/build-arm<br>
          uno@uno-laptop:~/rfnoc/src/gr-ettus/build-arm$ cmake
-DCMAKE_TOOLCHAIN_FILE=3D~/rfnoc/src/gnuradio/cmake/Toolchains/oe-sdk_cro=
ss.cmake
          -DCMAKE_INSTALL_PREFIX=3D/usr ..<br>
          -- Build type not specified: defaulting to release.<br>
          -- Checking for module 'gmp'<br>
          -- =C2=A0 No package 'gmp' found<br>
          -- Checking for module 'mpir &gt;=3D 3.0'<br>
          -- =C2=A0 No package 'mpir' found<br>
          -- Could NOT find MPIR (missing: MPIRXX_LIBRARY MPIR_LIBRARY
          MPIR_INCLUDE_DIR) <br>
          -- User set python executable
/__w/83/build/tmp-glibc/work/cortexa9t2hf-neon-oe-linux-gnueabi/gnuradio/=
3.8.3.0-r0/recipe-sysroot-native/usr/bin/python3-native/python3<br>
          CMake Error at
/home/uno/rfnoc/src/e3xx_e310_sdk_default-v4.2.0.1/OE_SDK/sysroots/cortex=
a9t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/gnuradio/GrPython.cmake:40
          (if):<br>
          =C2=A0 if given arguments:<br>
          <br>
          =C2=A0 =C2=A0 "VERSION_EQUAL" "3"<br>
          <br>
          =C2=A0 Unknown arguments specified<br>
          Call Stack (most recent call first):<br>
          =C2=A0
/home/uno/rfnoc/src/e3xx_e310_sdk_default-v4.2.0.1/OE_SDK/sysroots/cortex=
a9t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/gnuradio/GnuradioConfig.cmake:=
51
          (include)<br>
          =C2=A0 CMakeLists.txt:59 (find_package)<br>
          <br>
          <br>
          -- Configuring incomplete, errors occurred!<br>
          See also
          "/home/uno/rfnoc/src/gr-ettus/build-arm/CMakeFiles/CMakeOutput.=
log".<br>
          See also
          "/home/uno/rfnoc/src/gr-ettus/build-arm/CMakeFiles/CMakeError.l=
og".<br>
          uno@uno-laptop:~/rfnoc/src/gr-ettus/build-arm$</div>
        <div>}}}=C2=A0<br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">El mar, 25 oct 2022 a las
          14:14, Marcus M=C3=BCller (&lt;<a
            href=3D"mailto:marcus.mueller@ettus.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">marc=
us.mueller@ettus.com</a>&gt;)
          escribi=C3=B3:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
Hi
          Jorge,<br>
          <br>
          I sadly can't read your screenshot. Would you mind Copy and
          Pasting the text?<br>
          GMP and MPIR are the same thing. You only need one of them,
          not both!<br>
          <br>
          Best regards,<br>
          Marcus<br>
          <br>
          <br>
          On 25.10.22 18:57, Marcus D. Leech wrote:<br>
          &gt; On 2022-10-25 12:17, JORGE GONZALEZ ORELLANA via GNU
          Radio, the Free &amp; Open-Source Toolkit <br>
          &gt; for Software Radio wrote:<br>
          &gt;&gt; hi, i'm trying=C2=A0to install a usrp E312 using the
          follow guide:<br>
          &gt;&gt;<br>
          &gt;&gt; {{{<br>
          &gt;&gt; <a
href=3D"https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Buil=
ding_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source#Cross-Compiling_gr-ettu=
s"
            rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">https://kb.ettus.com/Software=
_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus=
_from_Source#Cross-Compiling_gr-ettus</a><br>
          &gt;&gt; }}}<br>
          &gt;&gt;<br>
          &gt;&gt; when i get to the cross-compiling gr-ettus step i get
          this error:<br>
          &gt;&gt;<br>
          &gt;&gt; image.png<br>
          &gt;&gt;<br>
          &gt;&gt; I make sure to set the environment=C2=A0correctly to u=
se
          the SDK, and as far as i know, the <br>
          &gt;&gt; gmp and mpir package=C2=A0are installed, so if someone=
 can
          help me, i will appreciate it a lot.<br>
          &gt;&gt;<br>
          &gt;&gt; thanks for your time<br>
          &gt;&gt;<br>
          &gt;&gt; JGO<br>
          &gt; Are those two packages installed into your *HOST*
          environment or your *CROSS DEV* <br>
          &gt; environment?<br>
          &gt; <br>
          &gt; <br>
        </blockquote>
      </div>
    </blockquote>
  </body>
</html>

--------------fPnKr0ZBztyHWwYFrMQIx0uw--

--===============6137032384829416315==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6137032384829416315==--
