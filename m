Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF574059A4
	for <lists+usrp-users@lfdr.de>; Thu,  9 Sep 2021 16:48:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0D777383D80
	for <lists+usrp-users@lfdr.de>; Thu,  9 Sep 2021 10:48:23 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nRQPHZd9";
	dkim-atps=neutral
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	by mm2.emwd.com (Postfix) with ESMTPS id D8F9F3848E2
	for <usrp-users@lists.ettus.com>; Thu,  9 Sep 2021 10:47:17 -0400 (EDT)
Received: by mail-qt1-f178.google.com with SMTP id g11so1611761qtk.5
        for <usrp-users@lists.ettus.com>; Thu, 09 Sep 2021 07:47:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=t+MLrwFlLmoyx9bFU3zjsVtYtl9fBMZIzxBT3kAsDvY=;
        b=nRQPHZd9qxHLHSABGBuNYmgKqjSTeebwDIvXM338R3CwGxto9Pi1F9GNQRhF/fmAYR
         bg0YxGOOL8MtNlf2rKjP3LQ8q40qQ4MuSQviRFoCAYxqYMjDGehMCxCU9cklzyrel89l
         1p5yYAAWQdW+wifKHugQ242Rb31eQQagegqClmN7FsltmKqsKLMvNF1PyOwen2D/ItB8
         eY69z+PTNmaD2p0BO2HPxex8cSiBaLHK1cGPXrFJtk/dn+0X3l0MlblL7QBCkeFhr7o5
         d55BVoDXYMtPUl+Hh6mEk14VK/XG3E3+5GZ99Xnm0yp9F5hr7lmNkeI+uA8stW8sPzll
         DNNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=t+MLrwFlLmoyx9bFU3zjsVtYtl9fBMZIzxBT3kAsDvY=;
        b=CE041C90j/KuIlz9nyNaIRs2pNtEhCd0dytXjYpbBqApgmH2P69qI27r4PbiM0crGF
         E40mGzAFknQS+q6MELCAMBYwKTI7krZfTPeH9qv9HVzi7XclAMbZIMhQiCnqmjurGUDl
         rCIN7wJd2fwwJdhMyNOSwRHVKnhp3UC56+9/1tsUGnv0r5E1DOufuZLXDy6mgx6HXJae
         Vf9ebpCki9gT4r9zJ+QLXZkedPVq7KcoI0XLHk6GAwgQOhvqvJ3yHJlpoCvjeoa9WV4M
         JUHUbiZNaWxvJMefzcrFSvr+F0Vzfv/XyQp5RXl+80eIEtcrA2CZdiewHwAHiY3Uk8Fp
         Wtpw==
X-Gm-Message-State: AOAM533aLMZ2OUmP1TkkdfsxuB7SUynqBVI69q4LLGfKEKstfwi1r86c
	jGYQzVrrcfKXgFKd8ewXmxQG2WX5OAHw2g==
X-Google-Smtp-Source: ABdhPJxPOdh+KO1wEm5OLK0/qABqkJwH3x6MUEAsDJlS0NBiw7EIC2ly0WBKFaQSitLTSiSIXhgI1w==
X-Received: by 2002:ac8:5a81:: with SMTP id c1mr3229781qtc.210.1631198836880;
        Thu, 09 Sep 2021 07:47:16 -0700 (PDT)
Received: from [192.168.2.243] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id v8sm1212770qtk.49.2021.09.09.07.47.15
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Sep 2021 07:47:16 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <b24ff5bf-8432-8b63-d75c-82631e45fd9f@cttc.es>
 <CAL7q81tPjxNWaUbf-2v3dEtsxYgh6QGjV-+LmwCjwG50xgRZTw@mail.gmail.com>
 <CAFOi1A4JzCrx1NVi9YdwJ3LC3qu0+9VSKVSBWXekk7J=75qHtQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <0fbeadc5-adf2-8315-f7cd-e95a8ab00703@gmail.com>
Date: Thu, 9 Sep 2021 10:47:15 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAFOi1A4JzCrx1NVi9YdwJ3LC3qu0+9VSKVSBWXekk7J=75qHtQ@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: FPDSCSE2WVUYDOA6SV4S75ODICG5KLBP
X-Message-ID-Hash: FPDSCSE2WVUYDOA6SV4S75ODICG5KLBP
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Remote Resetting of USRP
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FPDSCSE2WVUYDOA6SV4S75ODICG5KLBP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4457475073889070380=="

This is a multi-part message in MIME format.
--===============4457475073889070380==
Content-Type: multipart/alternative;
 boundary="------------5674A00E9AD0A1D1DB78038C"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------5674A00E9AD0A1D1DB78038C
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-09-09 10:32 a.m., Martin Braun wrote:
> This feature Jonathon talks about was moved to its own script:=20
> https://github.com/EttusResearch/uhddev/blob/master/host/utils/x300_res=
et.py=20
> <https://github.com/EttusResearch/uhddev/blob/master/host/utils/x300_re=
set.py>.=20
> This is Py3 compatible.
>
> --M
<wistful>
I'll observe that a better thing here would be if it wasn't possible for=20
the X300 to get into the state that x300_reset.py is designed to get it=20
out of...
</wistful>

Also, is it possible for the X300 to get into an even-deeper state of=20
hungness where power-cycling IS the right answer? If so, what fraction=20
of the time?


>
> On Sun, Sep 5, 2021 at 6:09 AM Jonathon Pendlum=20
> <jonathon.pendlum@ettus.com <mailto:jonathon.pendlum@ettus.com>> wrote:
>
>     Hi Armin,
>
>     While this is not an official feature and you won't receive any
>     support for this, you can trigger a reset for X3xx devices with
>     this command: uhd/firmware/usrp3/x300/x300_debug.py --addr <device
>     IP address> --poke=3D0x00100058 --data=3D1. Note the script is not
>     python3 compatible.
>
>     Jonathon
>
>     On Fri, Sep 3, 2021 at 5:00 AM Armin Ghani <aghani@cttc.es
>     <mailto:aghani@cttc.es>> wrote:
>
>         Dear Community
>
>         I'm working remotely with USRPs. Sometimes due to unknown
>         reasons, USRPs go to unknown state where they are still
>         accessible through ping but they product error while initializi=
ng:
>
>
>         Executing: /usr/bin/python3 -u
>         /home/.../Documents/.../ml/autoencoder/grc/dnn_ofdm_test.py
>
>
>         [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
>         UHD_3.15.0.HEAD-0-gaea0e2de
>         [INFO] [X300] X300 initialization sequence...
>         [INFO] [X300] Maximum frame size: 8000 bytes.
>         [INFO] [X300] Radio 1x clock: 200 MHz
>         [ERROR] [UHD] Exception caught in safe-call.
>         =C2=A0 in ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [wit=
h
>         uhd::endianness_t _endianness =3D (uhd::endianness_t)0]
>         =C2=A0 at /home/.../Documents/uhd/host/lib/rfnoc/ctrl_iface.cpp=
:52
>         this->send_cmd_pkt(0, 0, true); -> EnvironmentError: IOError:
>         Block ctrl (CE_00_Port_30) no response packet -
>         AssertionError: bool(buff)
>         =C2=A0 in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(b=
ool,
>         double) [with uhd::endianness_t _endianness =3D
>         (uhd::endianness_t)0; uint64_t =3D long unsigned int]
>         =C2=A0 at /home/.../Documents/uhd/host/lib/rfnoc/ctrl_iface.cpp=
:151
>
>         Traceback (most recent call last):
>         =C2=A0 File
>         "/home/.../Documents/.../ml/autoencoder/grc/dnn_ofdm_test.py",
>         line 1067, in <module>
>         =C2=A0=C2=A0=C2=A0 main()
>         =C2=A0 File
>         "/home/.../Documents/.../ml/autoencoder/grc/dnn_ofdm_test.py",
>         line 1043, in main
>         =C2=A0=C2=A0=C2=A0 tb =3D top_block_cls(cp_len=3Doptions.cp_len=
,
>         fft_len=3Doptions.fft_len, samp_rate=3Doptions.samp_rate,
>         tx_freq=3Doptions.tx_freq)
>         =C2=A0 File
>         "/home/.../Documents/.../ml/autoencoder/grc/dnn_ofdm_test.py",
>         line 237, in __init__
>         =C2=A0=C2=A0=C2=A0 channels=3Dlist(range(0,1)),
>         =C2=A0 File
>         "/usr/local/lib/python3/dist-packages/gnuradio/uhd/__init__.py"=
,
>         line 125, in constructor_interceptor
>         =C2=A0=C2=A0=C2=A0 return old_constructor(*args)
>         =C2=A0 File
>         "/usr/local/lib/python3/dist-packages/gnuradio/uhd/uhd_swig.py"=
,
>         line 3294, in make
>         =C2=A0=C2=A0=C2=A0 return _uhd_swig.usrp_source_make(device_add=
r,
>         stream_args, issue_stream_cmd_on_start)
>         RuntimeError: EnvironmentError: IOError: Block ctrl
>         (CE_00_Port_30) no response packet - AssertionError: bool(buff)
>         =C2=A0 in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(b=
ool,
>         double) [with uhd::endianness_t _endianness =3D
>         (uhd::endianness_t)0; uint64_t =3D long unsigned int]
>         =C2=A0 at /home/.../Documents/uhd/host/lib/rfnoc/ctrl_iface.cpp=
:151
>
>
>         And the only solution for this is hard resetting the USRP
>         which is a bit difficult for me. I'd like to know if there are
>         any other way to solve this issue or if you know remote ways
>         to do resetting which is equivalent to hard reset.
>
>         Regards.
>
>
>         --=20
>
>         Armin Ghani
>
>         Research Engineer | Communication Systems Division (CSD)
>
>         aghani@cttc.es <mailto:aghani@cttc.es>| +34 93 645 29 08 (2143)
>
>         Centre Tecnol=C3=B2gic de Telecomunicacions de Catalunya (CTTC)
>
>         Av. Carl Friedrich Gauss, 7 - Edifici B4 - PMT
>
>         08860 - Castelldefels (Barcelona, Spain)
>
>         www.cttc.cat
>
>         _______________________________________________
>         USRP-users mailing list -- usrp-users@lists.ettus.com
>         <mailto:usrp-users@lists.ettus.com>
>         To unsubscribe send an email to
>         usrp-users-leave@lists.ettus.com
>         <mailto:usrp-users-leave@lists.ettus.com>
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     <mailto:usrp-users@lists.ettus.com>
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>     <mailto:usrp-users-leave@lists.ettus.com>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com


--------------5674A00E9AD0A1D1DB78038C
Content-Type: multipart/related;
 boundary="------------E0000C915B8B9A24D2B1F137"


--------------E0000C915B8B9A24D2B1F137
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-09 10:32 a.m., Martin Braun
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAFOi1A4JzCrx1NVi9YdwJ3LC3qu0+9VSKVSBWXekk7J=3D75qHtQ@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>This feature Jonathon talks about was moved to its own
          script: <a
href=3D"https://github.com/EttusResearch/uhddev/blob/master/host/utils/x3=
00_reset.py"
            moz-do-not-send=3D"true">https://github.com/EttusResearch/uhd=
dev/blob/master/host/utils/x300_reset.py</a>.
          This is Py3 compatible.</div>
        <div><br>
        </div>
        <div>--M<br>
        </div>
      </div>
    </blockquote>
    &lt;wistful&gt;<br>
    I'll observe that a better thing here would be if it wasn't possible
    for the X300 to get into the state that x300_reset.py is designed to
    get it out of...<br>
    &lt;/wistful&gt;<br>
    <br>
    Also, is it possible for the X300 to get into an even-deeper state
    of hungness where power-cycling IS the right answer? If so, what
    fraction of the time?<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAFOi1A4JzCrx1NVi9YdwJ3LC3qu0+9VSKVSBWXekk7J=3D75qHtQ@mail.gm=
ail.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Sun, Sep 5, 2021 at 6:09=
 AM
          Jonathon Pendlum &lt;<a
            href=3D"mailto:jonathon.pendlum@ettus.com"
            moz-do-not-send=3D"true">jonathon.pendlum@ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">Hi Armin,
            <div><br>
            </div>
            <div>While this is not an official feature and you won't
              receive any support for this, you can trigger a reset for
              X3xx devices with this command:
              uhd/firmware/usrp3/x300/x300_debug.py --addr &lt;device IP
              address&gt; --poke=3D0x00100058 --data=3D1. Note the script=
 is
              not python3 compatible.</div>
            <div><br>
            </div>
            <div>Jonathon</div>
          </div>
          <br>
          <div class=3D"gmail_quote">
            <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Sep 3, 2021 at
              5:00 AM Armin Ghani &lt;<a href=3D"mailto:aghani@cttc.es"
                target=3D"_blank" moz-do-not-send=3D"true">aghani@cttc.es=
</a>&gt;
              wrote:<br>
            </div>
            <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
              0.8ex;border-left:1px solid
              rgb(204,204,204);padding-left:1ex">
              <div>
                <p>Dear Community</p>
                <p>I'm working remotely with USRPs. Sometimes due to
                  unknown reasons, USRPs go to unknown state where they
                  are still accessible through ping but they product
                  error while initializing:</p>
                <p><br>
                </p>
                <p><font face=3D"Courier New, Courier, monospace">Executi=
ng:
                    /usr/bin/python3 -u
                    /home/.../Documents/.../ml/autoencoder/grc/dnn_ofdm_t=
est.py<br>
                  </font></p>
                <p><br>
                  <font face=3D"Courier New, Courier, monospace">[INFO]
                    [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
                    UHD_3.15.0.HEAD-0-gaea0e2de<br>
                    [INFO] [X300] X300 initialization sequence...<br>
                    [INFO] [X300] Maximum frame size: 8000 bytes.<br>
                    [INFO] [X300] Radio 1x clock: 200 MHz<br>
                    [ERROR] [UHD] Exception caught in safe-call.<br>
                    =C2=A0 in
                    ctrl_iface_impl&lt;_endianness&gt;::~ctrl_iface_impl(=
)
                    [with uhd::endianness_t _endianness =3D
                    (uhd::endianness_t)0]<br>
                    =C2=A0 at
                    /home/.../Documents/uhd/host/lib/rfnoc/ctrl_iface.cpp=
:52<br>
                    this-&gt;send_cmd_pkt(0, 0, true); -&gt;
                    EnvironmentError: IOError: Block ctrl
                    (CE_00_Port_30) no response packet - AssertionError:
                    bool(buff)<br>
                    =C2=A0 in uint64_t
                    ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bool=
,
                    double) [with uhd::endianness_t _endianness =3D
                    (uhd::endianness_t)0; uint64_t =3D long unsigned int]=
<br>
                    =C2=A0 at
                    /home/.../Documents/uhd/host/lib/rfnoc/ctrl_iface.cpp=
:151<br>
                    <br>
                    Traceback (most recent call last):<br>
                    =C2=A0 File
                    "/home/.../Documents/.../ml/autoencoder/grc/dnn_ofdm_=
test.py",
                    line 1067, in &lt;module&gt;<br>
                    =C2=A0=C2=A0=C2=A0 main()<br>
                    =C2=A0 File
                    "/home/.../Documents/.../ml/autoencoder/grc/dnn_ofdm_=
test.py",
                    line 1043, in main<br>
                    =C2=A0=C2=A0=C2=A0 tb =3D top_block_cls(cp_len=3Dopti=
ons.cp_len,
                    fft_len=3Doptions.fft_len,
                    samp_rate=3Doptions.samp_rate,
                    tx_freq=3Doptions.tx_freq)<br>
                    =C2=A0 File
                    "/home/.../Documents/.../ml/autoencoder/grc/dnn_ofdm_=
test.py",
                    line 237, in __init__<br>
                    =C2=A0=C2=A0=C2=A0 channels=3Dlist(range(0,1)),<br>
                    =C2=A0 File
                    "/usr/local/lib/python3/dist-packages/gnuradio/uhd/__=
init__.py",
                    line 125, in constructor_interceptor<br>
                    =C2=A0=C2=A0=C2=A0 return old_constructor(*args)<br>
                    =C2=A0 File
                    "/usr/local/lib/python3/dist-packages/gnuradio/uhd/uh=
d_swig.py",
                    line 3294, in make<br>
                    =C2=A0=C2=A0=C2=A0 return _uhd_swig.usrp_source_make(=
device_addr,
                    stream_args, issue_stream_cmd_on_start)<br>
                    RuntimeError: EnvironmentError: IOError: Block ctrl
                    (CE_00_Port_30) no response packet - AssertionError:
                    bool(buff)<br>
                    =C2=A0 in uint64_t
                    ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bool=
,
                    double) [with uhd::endianness_t _endianness =3D
                    (uhd::endianness_t)0; uint64_t =3D long unsigned int]=
<br>
                    =C2=A0 at
                    /home/.../Documents/uhd/host/lib/rfnoc/ctrl_iface.cpp=
:151</font></p>
                <p><br>
                </p>
                <p>And the only solution for this is hard resetting the
                  USRP which is a bit difficult for me. I'd like to know
                  if there are any other way to solve this issue or if
                  you know remote ways to do resetting which is
                  equivalent to hard reset.</p>
                <p>Regards.<br>
                </p>
                <p><br>
                </p>
                <div>-- <br>
                  <p> </p>
                  <p> </p>
                  <p class=3D"MsoNormal"
                    style=3D"margin-bottom:0in;line-height:normal"><img
                      src=3D"cid:part4.F692BEB5.7B6841A3@gmail.com"
                      class=3D"" width=3D"151" hspace=3D"12" height=3D"10=
0"
                      align=3D"left"><span>Armin Ghani</span></p>
                  <p class=3D"MsoNormal"
                    style=3D"margin-bottom:0in;line-height:normal"><span>=
Research
                      Engineer | Communication Systems Division (CSD)</sp=
an></p>
                  <p class=3D"MsoNormal"
                    style=3D"margin-bottom:0in;line-height:normal"><a
                      href=3D"mailto:aghani@cttc.es" target=3D"_blank"
                      moz-do-not-send=3D"true"><span>aghani@cttc.es</span=
></a><span>
                      | +34 93 645 29 08 (2143)</span></p>
                  <p class=3D"MsoNormal"
                    style=3D"margin-bottom:0in;line-height:normal"><span>=
Centre
                      Tecnol=C3=B2gic de Telecomunicacions de Catalunya
                      (CTTC)</span></p>
                  <p class=3D"MsoNormal"
                    style=3D"margin-bottom:0in;line-height:normal"><span>=
Av.
                      Carl Friedrich Gauss, 7 - Edifici B4 - PMT</span></=
p>
                  <p class=3D"MsoNormal"
                    style=3D"margin-bottom:0in;line-height:normal"><span>=
08860
                      - Castelldefels (Barcelona, Spain)</span></p>
                  <p class=3D"MsoNormal"
                    style=3D"margin-bottom:0in;line-height:normal"><a
                      moz-do-not-send=3D"true"><span lang=3D"ES">www.cttc=
.cat</span></a><span
                      lang=3D"ES"></span></p>
                </div>
              </div>
              _______________________________________________<br>
              USRP-users mailing list -- <a
                href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bla=
nk"
                moz-do-not-send=3D"true">usrp-users@lists.ettus.com</a><b=
r>
              To unsubscribe send an email to <a
                href=3D"mailto:usrp-users-leave@lists.ettus.com"
                target=3D"_blank" moz-do-not-send=3D"true">usrp-users-lea=
ve@lists.ettus.com</a><br>
            </blockquote>
          </div>
          _______________________________________________<br>
          USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true">usrp-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true">usrp-users-leave@l=
ists.ettus.com</a><br>
        </blockquote>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
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

--------------E0000C915B8B9A24D2B1F137
Content-Type: image/jpeg;
 name="ghgbnjldhbgmmpcj.jpeg"
Content-Transfer-Encoding: base64
Content-ID: <part4.F692BEB5.7B6841A3@gmail.com>
Content-Disposition: inline;
 filename="ghgbnjldhbgmmpcj.jpeg"

/9j/4AAQSkZJRgABAQEAkACQAAD/2wBDAAoHBwkHBgoJCAkLCwoMDxkQDw4ODx4WFxIZJCAm
JSMgIyIoLTkwKCo2KyIjMkQyNjs9QEBAJjBGS0U+Sjk/QD3/2wBDAQsLCw8NDx0QEB09KSMp
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT3/wAAR
CAC7ARoDASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAA
AgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkK
FhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWG
h4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl
5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREA
AgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYk
NOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOE
hYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk
5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD2aiiigAooooAKSlqjqeq2mkW5ub2ZY0HC
jqzH0A6k+woAu1l6r4i0vRsi+vY45O0YOW/If1rJb+3vEg+Uvo1gw4PWeQZ/8d6fXmrum+Dd
H0071tRNPnJlnO9ifXJp2S3AxpviPFMrDSNJ1C9wPvrEdufQ4BqJPGniR0DL4WmwemSR/Su5
VFQYRQo9AMU6nzLsB57N4/16BiJPDNwpHX5HI/MDFQW/xa/ekXemEL6Rvzn8RXpNU7zSrG/j
Md1aQyqf7yCnzR6oWpg6f8Q9CviFkna2kPaVcD866S3uoLyIS200csZ6NGwYH8RXHat8MdMu
wW0+R7OXsPvJ+RrirvQfEPg+4+0R+dHEn/Le3JKn6gf1quWMvhYXZ7YKK8z0L4osu2PW4ty9
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
--------------E0000C915B8B9A24D2B1F137--

--------------5674A00E9AD0A1D1DB78038C--

--===============4457475073889070380==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4457475073889070380==--
