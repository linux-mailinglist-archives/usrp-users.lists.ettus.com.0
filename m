Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B6E405919
	for <lists+usrp-users@lfdr.de>; Thu,  9 Sep 2021 16:33:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6B1443842AF
	for <lists+usrp-users@lfdr.de>; Thu,  9 Sep 2021 10:33:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="MPrvdi+/";
	dkim-atps=neutral
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	by mm2.emwd.com (Postfix) with ESMTPS id C078F384245
	for <usrp-users@lists.ettus.com>; Thu,  9 Sep 2021 10:32:55 -0400 (EDT)
Received: by mail-ej1-f44.google.com with SMTP id i21so4053903ejd.2
        for <usrp-users@lists.ettus.com>; Thu, 09 Sep 2021 07:32:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=btC3fOWIP31b7N92jCW/hS24ANjLf1UyTAKEgANi6Ms=;
        b=MPrvdi+/GzeJVn0wk8/xrSRgzjNsd+SZKjxh74aD36YcHCY6yYpD7m8GhT/HaTVMhF
         aHtuA8oqR1bCwYovblW+B+8V3fvIXIrPjKswQXkjxnJgS4lO/WqsQ4qg5497RwtBEIIO
         GKtZhW7SgW89uH58zahCSXlyRfv6c1DIprLhOom0cy3lc/Wdyy3vFv3BWTNjzzEyHpq8
         w0qQ1d2D6jdTq/u5kdMyWUefDdbewAnkFCubDyIalYwt1FHQXzHw4OjK+/3qUqiEVgLz
         rQypqalbOzvHIa3jMpxYm0OoruK1yotwX/ISOoxGSHRyydJB9/RvaqHfslz3si4LzmXZ
         kRAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=btC3fOWIP31b7N92jCW/hS24ANjLf1UyTAKEgANi6Ms=;
        b=joW9zcuJi0cMd2KkjkGAMEzpOyAXQg71uoErPwa/wly/hVzuccnQ06+dBkuLzyh1Mu
         OdK2txMbroggqvxUjk9OBnPA4IMFeccwZNLFqbOlV4ReTbF3Ij0vm1xXGVNf3YIlisJE
         NV5TnBl2YakwnbCc7nFUfrkWik9Qg4/N4ovq7KLQaxrFvs9llfx6v/LHQT4N1iF9jBt+
         5bfSxwp3ZvdRknfErrNDAGABEOYpJ8borgVljsaVcllye0DEMiGvm7oWeolz2hyndCoK
         4XnT77t2J6/5BfTEWju4b4V4+7gT6PdpkdPNmKn9SQnVkbwOOSxNNx8uxRvg0qugYMqr
         hzNg==
X-Gm-Message-State: AOAM532Ernn/vsi1yeA75ru2koAc/rDlnYdxuI68z1PShj3u1bEVCpl6
	bjYG7J/1nIW40OR/Xv4DPX7D1UB5gvNtr9JS5hoEHDwQ
X-Google-Smtp-Source: ABdhPJzlA1U+upZeZvhf2+JAHNtYaB08222UuunnuALO7qNXVst4pb2W6R77+xX2ufd0+WRU4Sof3ZG7dwq4Zq1r4Qc=
X-Received: by 2002:a17:906:c252:: with SMTP id bl18mr3618824ejb.519.1631197974643;
 Thu, 09 Sep 2021 07:32:54 -0700 (PDT)
MIME-Version: 1.0
References: <b24ff5bf-8432-8b63-d75c-82631e45fd9f@cttc.es> <CAL7q81tPjxNWaUbf-2v3dEtsxYgh6QGjV-+LmwCjwG50xgRZTw@mail.gmail.com>
In-Reply-To: <CAL7q81tPjxNWaUbf-2v3dEtsxYgh6QGjV-+LmwCjwG50xgRZTw@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 9 Sep 2021 16:32:43 +0200
Message-ID: <CAFOi1A4JzCrx1NVi9YdwJ3LC3qu0+9VSKVSBWXekk7J=75qHtQ@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Message-ID-Hash: O6L7ZDZXABR34AGL6ZBEROHYV2DC3JT4
X-Message-ID-Hash: O6L7ZDZXABR34AGL6ZBEROHYV2DC3JT4
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Armin Ghani <aghani@cttc.es>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Remote Resetting of USRP
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/O6L7ZDZXABR34AGL6ZBEROHYV2DC3JT4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1286327759450553090=="

--===============1286327759450553090==
Content-Type: multipart/related; boundary="000000000000d68e0405cb90dff2"

--000000000000d68e0405cb90dff2
Content-Type: multipart/alternative; boundary="000000000000d68e0305cb90dff1"

--000000000000d68e0305cb90dff1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This feature Jonathon talks about was moved to its own script:
https://github.com/EttusResearch/uhddev/blob/master/host/utils/x300_reset.p=
y.
This is Py3 compatible.

--M

On Sun, Sep 5, 2021 at 6:09 AM Jonathon Pendlum <jonathon.pendlum@ettus.com=
>
wrote:

> Hi Armin,
>
> While this is not an official feature and you won't receive any support
> for this, you can trigger a reset for X3xx devices with this command:
> uhd/firmware/usrp3/x300/x300_debug.py --addr <device IP address>
> --poke=3D0x00100058 --data=3D1. Note the script is not python3 compatible=
.
>
> Jonathon
>
> On Fri, Sep 3, 2021 at 5:00 AM Armin Ghani <aghani@cttc.es> wrote:
>
>> Dear Community
>>
>> I'm working remotely with USRPs. Sometimes due to unknown reasons, USRPs
>> go to unknown state where they are still accessible through ping but the=
y
>> product error while initializing:
>>
>>
>> Executing: /usr/bin/python3 -u
>> /home/.../Documents/.../ml/autoencoder/grc/dnn_ofdm_test.py
>>
>>
>> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
>> UHD_3.15.0.HEAD-0-gaea0e2de
>> [INFO] [X300] X300 initialization sequence...
>> [INFO] [X300] Maximum frame size: 8000 bytes.
>> [INFO] [X300] Radio 1x clock: 200 MHz
>> [ERROR] [UHD] Exception caught in safe-call.
>>   in ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with
>> uhd::endianness_t _endianness =3D (uhd::endianness_t)0]
>>   at /home/.../Documents/uhd/host/lib/rfnoc/ctrl_iface.cpp:52
>> this->send_cmd_pkt(0, 0, true); -> EnvironmentError: IOError: Block ctrl
>> (CE_00_Port_30) no response packet - AssertionError: bool(buff)
>>   in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double)
>> [with uhd::endianness_t _endianness =3D (uhd::endianness_t)0; uint64_t =
=3D long
>> unsigned int]
>>   at /home/.../Documents/uhd/host/lib/rfnoc/ctrl_iface.cpp:151
>>
>> Traceback (most recent call last):
>>   File "/home/.../Documents/.../ml/autoencoder/grc/dnn_ofdm_test.py",
>> line 1067, in <module>
>>     main()
>>   File "/home/.../Documents/.../ml/autoencoder/grc/dnn_ofdm_test.py",
>> line 1043, in main
>>     tb =3D top_block_cls(cp_len=3Doptions.cp_len, fft_len=3Doptions.fft_=
len,
>> samp_rate=3Doptions.samp_rate, tx_freq=3Doptions.tx_freq)
>>   File "/home/.../Documents/.../ml/autoencoder/grc/dnn_ofdm_test.py",
>> line 237, in __init__
>>     channels=3Dlist(range(0,1)),
>>   File "/usr/local/lib/python3/dist-packages/gnuradio/uhd/__init__.py",
>> line 125, in constructor_interceptor
>>     return old_constructor(*args)
>>   File "/usr/local/lib/python3/dist-packages/gnuradio/uhd/uhd_swig.py",
>> line 3294, in make
>>     return _uhd_swig.usrp_source_make(device_addr, stream_args,
>> issue_stream_cmd_on_start)
>> RuntimeError: EnvironmentError: IOError: Block ctrl (CE_00_Port_30) no
>> response packet - AssertionError: bool(buff)
>>   in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double)
>> [with uhd::endianness_t _endianness =3D (uhd::endianness_t)0; uint64_t =
=3D long
>> unsigned int]
>>   at /home/.../Documents/uhd/host/lib/rfnoc/ctrl_iface.cpp:151
>>
>>
>> And the only solution for this is hard resetting the USRP which is a bit
>> difficult for me. I'd like to know if there are any other way to solve t=
his
>> issue or if you know remote ways to do resetting which is equivalent to
>> hard reset.
>>
>> Regards.
>>
>>
>> --
>>
>> Armin Ghani
>>
>> Research Engineer | Communication Systems Division (CSD)
>>
>> aghani@cttc.es | +34 93 645 29 08 (2143)
>>
>> Centre Tecnol=C3=B2gic de Telecomunicacions de Catalunya (CTTC)
>>
>> Av. Carl Friedrich Gauss, 7 - Edifici B4 - PMT
>>
>> 08860 - Castelldefels (Barcelona, Spain)
>>
>> www.cttc.cat
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000d68e0305cb90dff1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>This feature Jonathon talks about was moved to its ow=
n script: <a href=3D"https://github.com/EttusResearch/uhddev/blob/master/ho=
st/utils/x300_reset.py">https://github.com/EttusResearch/uhddev/blob/master=
/host/utils/x300_reset.py</a>. This is Py3 compatible.</div><div><br></div>=
<div>--M<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Sun, Sep 5, 2021 at 6:09 AM Jonathon Pendlum &lt;<a hr=
ef=3D"mailto:jonathon.pendlum@ettus.com">jonathon.pendlum@ettus.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">Hi Armin,<div><br></div><div>While this is not an official feature=
 and you won&#39;t receive any support for this, you can trigger a reset fo=
r X3xx devices with this command: uhd/firmware/usrp3/x300/x300_debug.py --a=
ddr &lt;device IP address&gt; --poke=3D0x00100058 --data=3D1. Note the scri=
pt is not python3 compatible.</div><div><br></div><div>Jonathon</div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri=
, Sep 3, 2021 at 5:00 AM Armin Ghani &lt;<a href=3D"mailto:aghani@cttc.es" =
target=3D"_blank">aghani@cttc.es</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
 =20

   =20
 =20
  <div>
    <p>Dear Community</p>
    <p>I&#39;m working remotely with USRPs. Sometimes due to unknown
      reasons, USRPs go to unknown state where they are still accessible
      through ping but they product error while initializing:</p>
    <p><br>
    </p>
    <p><font face=3D"Courier New, Courier, monospace">Executing:
        /usr/bin/python3 -u
        /home/.../Documents/.../ml/autoencoder/grc/dnn_ofdm_test.py<br>
      </font></p>
    <p><br>
      <font face=3D"Courier New, Courier, monospace">[INFO] [UHD] linux;
        GNU C++ version 7.5.0; Boost_106501; UHD_3.15.0.HEAD-0-gaea0e2de<br=
>
        [INFO] [X300] X300 initialization sequence...<br>
        [INFO] [X300] Maximum frame size: 8000 bytes.<br>
        [INFO] [X300] Radio 1x clock: 200 MHz<br>
        [ERROR] [UHD] Exception caught in safe-call.<br>
        =C2=A0 in ctrl_iface_impl&lt;_endianness&gt;::~ctrl_iface_impl()
        [with uhd::endianness_t _endianness =3D (uhd::endianness_t)0]<br>
        =C2=A0 at /home/.../Documents/uhd/host/lib/rfnoc/ctrl_iface.cpp:52<=
br>
        this-&gt;send_cmd_pkt(0, 0, true); -&gt; EnvironmentError:
        IOError: Block ctrl (CE_00_Port_30) no response packet -
        AssertionError: bool(buff)<br>
        =C2=A0 in uint64_t
        ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bool, double)
        [with uhd::endianness_t _endianness =3D (uhd::endianness_t)0;
        uint64_t =3D long unsigned int]<br>
        =C2=A0 at /home/.../Documents/uhd/host/lib/rfnoc/ctrl_iface.cpp:151=
<br>
        <br>
        Traceback (most recent call last):<br>
        =C2=A0 File
        &quot;/home/.../Documents/.../ml/autoencoder/grc/dnn_ofdm_test.py&q=
uot;,
        line 1067, in &lt;module&gt;<br>
        =C2=A0=C2=A0=C2=A0 main()<br>
        =C2=A0 File
        &quot;/home/.../Documents/.../ml/autoencoder/grc/dnn_ofdm_test.py&q=
uot;,
        line 1043, in main<br>
        =C2=A0=C2=A0=C2=A0 tb =3D top_block_cls(cp_len=3Doptions.cp_len,
        fft_len=3Doptions.fft_len, samp_rate=3Doptions.samp_rate,
        tx_freq=3Doptions.tx_freq)<br>
        =C2=A0 File
        &quot;/home/.../Documents/.../ml/autoencoder/grc/dnn_ofdm_test.py&q=
uot;,
        line 237, in __init__<br>
        =C2=A0=C2=A0=C2=A0 channels=3Dlist(range(0,1)),<br>
        =C2=A0 File
        &quot;/usr/local/lib/python3/dist-packages/gnuradio/uhd/__init__.py=
&quot;,
        line 125, in constructor_interceptor<br>
        =C2=A0=C2=A0=C2=A0 return old_constructor(*args)<br>
        =C2=A0 File
        &quot;/usr/local/lib/python3/dist-packages/gnuradio/uhd/uhd_swig.py=
&quot;,
        line 3294, in make<br>
        =C2=A0=C2=A0=C2=A0 return _uhd_swig.usrp_source_make(device_addr, s=
tream_args,
        issue_stream_cmd_on_start)<br>
        RuntimeError: EnvironmentError: IOError: Block ctrl
        (CE_00_Port_30) no response packet - AssertionError: bool(buff)<br>
        =C2=A0 in uint64_t
        ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bool, double)
        [with uhd::endianness_t _endianness =3D (uhd::endianness_t)0;
        uint64_t =3D long unsigned int]<br>
        =C2=A0 at /home/.../Documents/uhd/host/lib/rfnoc/ctrl_iface.cpp:151=
</font></p>
    <p><br>
    </p>
    <p>And the only solution for this is hard resetting the USRP which
      is a bit difficult for me. I&#39;d like to know if there are any othe=
r
      way to solve this issue or if you know remote ways to do resetting
      which is equivalent to hard reset.</p>
    <p>Regards.<br>
    </p>
    <p><br>
    </p>
    <div>-- <br>
     =20
     =20
      <p> </p>
      <p>
       =20
       =20
       =20
         </p>
      <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:normal"=
><img src=3D"cid:17bb419efcfe0173d7c1" width=3D"151" hspace=3D"12" height=
=3D"100" align=3D"left"><span>Armin
          Ghani</span></p>
      <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:normal"=
><span>Research
          Engineer | Communication Systems Division (CSD)</span></p>
      <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:normal"=
><a href=3D"mailto:aghani@cttc.es" target=3D"_blank"><span>aghani@cttc.es</=
span></a><span> | +34 93
          645 29 08 (2143)</span></p>
      <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:normal"=
><span>Centre
          Tecnol=C3=B2gic de Telecomunicacions de Catalunya (CTTC)</span></=
p>
      <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:normal"=
><span>Av. Carl
          Friedrich Gauss, 7 - Edifici B4 - PMT</span></p>
      <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:normal"=
><span>08860 -
          Castelldefels (Barcelona, Spain)</span></p>
      <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:normal"=
><a><span lang=3D"ES">www.cttc.cat</span></a><span lang=3D"ES"></span></p>
    </div>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000d68e0305cb90dff1--

--000000000000d68e0405cb90dff2
Content-Type: image/jpeg; name="ghgbnjldhbgmmpcj.jpeg"
Content-Disposition: inline; filename="ghgbnjldhbgmmpcj.jpeg"
Content-Transfer-Encoding: base64
Content-ID: <17bb419efcfe0173d7c1>
X-Attachment-Id: 17bb419efcfe0173d7c1

/9j/4AAQSkZJRgABAQEAkACQAAD/2wBDAAoHBwkHBgoJCAkLCwoMDxkQDw4ODx4WFxIZJCAmJSMg
IyIoLTkwKCo2KyIjMkQyNjs9QEBAJjBGS0U+Sjk/QD3/2wBDAQsLCw8NDx0QEB09KSMpPT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT3/wAARCAC7ARoDASIA
AhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQA
AAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3
ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWm
p6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEA
AwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSEx
BhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElK
U1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3
uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD2aiii
gAooooAKSlqjqeq2mkW5ub2ZY0HCjqzH0A6k+woAu1l6r4i0vRsi+vY45O0YOW/If1rJb+3vEg+U
vo1gw4PWeQZ/8d6fXmrum+DdH0071tRNPnJlnO9ifXJp2S3AxpviPFMrDSNJ1C9wPvrEdufQ4BqJ
PGniR0DL4WmwemSR/Su5VFQYRQo9AMU6nzLsB57N4/16BiJPDNwpHX5HI/MDFQW/xa/ekXemEL6R
vzn8RXpNU7zSrG/jMd1aQyqf7yCnzR6oWpg6f8Q9CviFkna2kPaVcD866S3uoLyIS200csZ6NGwY
H8RXHat8MdMuwW0+R7OXsPvJ+RrirvQfEPg+4+0R+dHEn/Le3JKn6gf1quWMvhYXZ7YKK8z0L4os
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
MAByBGgWrAGKdSUgClpKWgAooooAKKKKAP/Z
--000000000000d68e0405cb90dff2--

--===============1286327759450553090==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1286327759450553090==--
