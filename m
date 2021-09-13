Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B485F408278
	for <lists+usrp-users@lfdr.de>; Mon, 13 Sep 2021 03:06:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4C111384782
	for <lists+usrp-users@lfdr.de>; Sun, 12 Sep 2021 21:06:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kGcZ7evQ";
	dkim-atps=neutral
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 2C512384561
	for <usrp-users@lists.ettus.com>; Sun, 12 Sep 2021 21:05:57 -0400 (EDT)
Received: by mail-qt1-f179.google.com with SMTP id u21so6826298qtw.8
        for <usrp-users@lists.ettus.com>; Sun, 12 Sep 2021 18:05:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=onV6ZyGs1AvK9mAa0WrVPClbyI58H639yd8kNBaZjhc=;
        b=kGcZ7evQTe48iQYB2iACsz2Ol9rNqArG9c0Eo7eT521NrQBbCQz/88XR6K9stib91c
         RHxP6SgAGuYhnp/L8AcMtRXiHxA9vZpQojx8qZE4WBmYYkL7jrMknmAPc3FNeknvY3mZ
         rvM1BothW85EyraeCAdSFY0/i3n5o9OV2P9xLLyFSLINp9ggzPwDpo9cTid725hLZW0J
         HHLS3Qi0jrvMzQE9OsH5ZgmgtXlx206fGqKWYQBLIwhPPBpmfSV/OKlYyE7BT5B4T7pH
         2QEfbb7JGC5qv+y01g5bEgSEwtSALrSPWQwPxneTKSim/lkZyVLyqOf4DrAqV089P7ag
         e1Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=onV6ZyGs1AvK9mAa0WrVPClbyI58H639yd8kNBaZjhc=;
        b=C88zZxHlBa1+2PQNZPGtteesM/SHDPsMFV3YIqQ67/Fs75LX+5HmFkT1FSbGkLSF+3
         P3A6EUTcx4kh+T5ZPZA6LqPbXAsW7UYBaECg3Gk20XQKe6IOYsh3uJn4gpH5gQLNYeWO
         WCFDjKcb1waIln3MduRi6DopzVoGK/Wpl9qYMSwQ+gPvYc97KrMmRpyotKyG5ze3fbJK
         wVvw1o1OVmE9YnzO/cU0RxGE6NgOxnBGmweSRS7/NpQNwF8OXx+6nKk4vKXwAkL53VGg
         jg8XzMFUoHrf/M1+LLuHTTRAR06KDeCwXI+RdV0+CWlr/DNWq9X2xEkEOxiNT5AA5jkM
         fP9g==
X-Gm-Message-State: AOAM532nMJtrUHcTQFLDZG3HCRdzaKKmYF+Pj78AOgXQLdJFuqM3YI/H
	b8L/Lh41pUmVdyYq4gOcG33OMzRU1iFcwA==
X-Google-Smtp-Source: ABdhPJxW6NHZMHp3jQlRRXPLbZu5zbjbj1C7SUZc6EHnQmQLRNYOQXz8SJe2F1/XB2QsYKDmx0I6Gw==
X-Received: by 2002:ac8:4292:: with SMTP id o18mr7455760qtl.75.1631495156269;
        Sun, 12 Sep 2021 18:05:56 -0700 (PDT)
Received: from [192.168.2.210] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id a22sm3327705qtd.56.2021.09.12.18.05.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Sep 2021 18:05:55 -0700 (PDT)
To: zhou <hwzhou@yahoo.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <b24ff5bf-8432-8b63-d75c-82631e45fd9f@cttc.es>
 <CAL7q81tPjxNWaUbf-2v3dEtsxYgh6QGjV-+LmwCjwG50xgRZTw@mail.gmail.com>
 <CAFOi1A4JzCrx1NVi9YdwJ3LC3qu0+9VSKVSBWXekk7J=75qHtQ@mail.gmail.com>
 <0fbeadc5-adf2-8315-f7cd-e95a8ab00703@gmail.com>
 <804336125.2658048.1631299169124@mail.yahoo.com>
 <32b873e4-404d-2b27-61d9-2dd53fd0689a@gmail.com>
 <899213065.2697497.1631311503116@mail.yahoo.com>
 <6b46431b-cf2a-4796-c707-cce4ea524c6a@gmail.com>
 <1529290832.2403454.1631339791541@mail.yahoo.com>
 <1b1061ac-8a1f-2009-f5a7-19b58c532fd5@gmail.com>
 <410306297.2886349.1631467905488@mail.yahoo.com>
 <ca9cac4c-71ce-7887-cf52-3e0d36d45d28@gmail.com>
 <2078480465.2919564.1631489465910@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <a5bbd7fe-af0d-e07a-6d8d-ee0b4b4d758a@gmail.com>
Date: Sun, 12 Sep 2021 21:05:54 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <2078480465.2919564.1631489465910@mail.yahoo.com>
Content-Language: en-US
Message-ID-Hash: OU2CHWCHGUZ6WFLCLVRAN4IT5V3ZQ5D2
X-Message-ID-Hash: OU2CHWCHGUZ6WFLCLVRAN4IT5V3ZQ5D2
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Configure send_buff_size in N321 USRP
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OU2CHWCHGUZ6WFLCLVRAN4IT5V3ZQ5D2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2988767681178307539=="

This is a multi-part message in MIME format.
--===============2988767681178307539==
Content-Type: multipart/alternative;
 boundary="------------04CE07D2D1BB60D0B6E2BA6C"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------04CE07D2D1BB60D0B6E2BA6C
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-09-12 7:31 p.m., zhou wrote:
> Thank you Marcus.
> I tried as below:
> my_stream_args.args["send_buff_size"] =3D std::to_string(500000);
> my_stream_args.args["send_buff_size"] =3D std::to_string(5000000);
> They give the same results. The 1MB limit still exists. I don't know=20
> where this limit comes from.
> Am I wrong in configuration?
>
I think I've already explained that the "send_buff_size" stream argument=20
controls the HOST SIDE BUFFER ONLY, since it
 =C2=A0 eventually just uses the standard Unix/Linux/BSD "socket" API cal=
l=20
setsockopt() to set the SO_SNDBUF option to the
 =C2=A0 value you provide.

The buffering ON THE USRP is a different matter, and as I've already=20
explained, this is likely fixed by the FPGA implementation.
 =C2=A0 You'd previously talked about the SD card on the N321, but there'=
s NO=20
WAY that could be used for buffering--for one, it's
 =C2=A0 dedicated to the Linux filesystem on the device, and for a second=
,=20
it's VASTLY TOO SLOW.=C2=A0=C2=A0 The DRAM on the N321 is dedicated
 =C2=A0 as far as I know, to the Linux CPU and if any of it is available =
for=20
the FPGA AT ALL, it's not going to be very much, and it's
 =C2=A0 likely FIXED TO A SPECIFIC VALUE by the implementation.

If you're seeing very-occasional LLL and U at very-high rates (and=20
believe me, multiple channels at 245Msps are *very high rates*),
 =C2=A0 then your issue is likely not strictly buffering related, but rel=
ated=20
to something that Linux may be doing on your host "once in a while"
 =C2=A0 that changes the performance dynamics.



--------------04CE07D2D1BB60D0B6E2BA6C
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-12 7:31 p.m., zhou wrote:<b=
r>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:2078480465.2919564.1631489465910@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydp4fc3d016yahoo-style-wrap" style=3D"font-size: 13px=
;
        font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">
        <div dir=3D"ltr" data-setdir=3D"false" style=3D"font-family: Helv=
etica
          Neue, Helvetica, Arial, sans-serif;">Thank you Marcus.</div>
        <div dir=3D"ltr" data-setdir=3D"false" style=3D"font-family: Helv=
etica
          Neue, Helvetica, Arial, sans-serif;">I tried as below:</div>
        <div dir=3D"ltr" data-setdir=3D"false" style=3D"font-family: Helv=
etica
          Neue, Helvetica, Arial, sans-serif;"><span><span style=3D"color=
: rgb(0, 0, 0); font-family: monospace, fixed; white-space: pre-wrap; bac=
kground-color: rgb(253, 253, 252);">my_stream_args.args[</span><span clas=
s=3D"ydp326b50e8stringliteral" style=3D"color: rgb(0, 32, 128); font-fami=
ly: monospace, fixed; white-space: pre-wrap; background-color: rgb(253, 2=
53, 252);">"send_buff_size"</span><span style=3D"color: rgb(0, 0, 0); fon=
t-family: monospace, fixed; white-space: pre-wrap; background-color: rgb(=
253, 253, 252);">] =3D std::to_string(500000);</span></span><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false" style=3D"font-family: Helv=
etica
          Neue, Helvetica, Arial, sans-serif;"><span><span style=3D"color=
: rgb(0, 0, 0); font-family: monospace, fixed; white-space: pre-wrap; bac=
kground-color: rgb(253, 253, 252);"><span><span style=3D"color: rgb(0, 0,=
 0); font-family: monospace, fixed; white-space: pre-wrap; background-col=
or: rgb(253, 253, 252);">my_stream_args.args[</span><span class=3D"ydp326=
b50e8stringliteral" style=3D"color: rgb(0, 32, 128); font-family: monospa=
ce, fixed; white-space: pre-wrap; background-color: rgb(253, 253, 252);">=
"send_buff_size"</span><span style=3D"color: rgb(0, 0, 0); font-family: m=
onospace, fixed; white-space: pre-wrap; background-color: rgb(253, 253, 2=
52);">] =3D std::to_string(5000000);</span></span>
</span></span></div>
        <div dir=3D"ltr" data-setdir=3D"false" style=3D"font-family: Helv=
etica
          Neue, Helvetica, Arial, sans-serif;"><span><span style=3D"color=
: rgb(0, 0, 0); font-family: monospace, fixed; white-space: pre-wrap; bac=
kground-color: rgb(253, 253, 252);"><span><span style=3D"color: rgb(0, 0,=
 0); font-family: monospace, fixed; white-space: pre-wrap; background-col=
or: rgb(253, 253, 252);">They give the same results. The 1MB limit still =
exists. I don't know where this limit comes from.</span></span></span></s=
pan></div>
        <div dir=3D"ltr" data-setdir=3D"false" style=3D"font-family: Helv=
etica
          Neue, Helvetica, Arial, sans-serif;"><span><span style=3D"color=
: rgb(0, 0, 0); font-family: monospace, fixed; white-space: pre-wrap; bac=
kground-color: rgb(253, 253, 252);"><span><span style=3D"color: rgb(0, 0,=
 0); font-family: monospace, fixed; white-space: pre-wrap; background-col=
or: rgb(253, 253, 252);">Am I wrong in configuration?</span></span></span=
></span></div>
        <div dir=3D"ltr" data-setdir=3D"false" style=3D"font-family: Helv=
etica
          Neue, Helvetica, Arial, sans-serif;"><span><span style=3D"color=
: rgb(0, 0, 0); font-family: monospace, fixed; white-space: pre-wrap; bac=
kground-color: rgb(253, 253, 252);"><span><span style=3D"color: rgb(0, 0,=
 0); font-family: monospace, fixed; white-space: pre-wrap; background-col=
or: rgb(253, 253, 252);">
</span></span></span></span></div>
        <br>
      </div>
    </blockquote>
    I think I've already explained that the "send_buff_size" stream
    argument controls the HOST SIDE BUFFER ONLY, since it<br>
    =C2=A0 eventually just uses the standard Unix/Linux/BSD "socket" API =
call
    setsockopt() to set the SO_SNDBUF option to the<br>
    =C2=A0 value you provide.<br>
    <br>
    The buffering ON THE USRP is a different matter, and as I've already
    explained, this is likely fixed by the FPGA implementation.<br>
    =C2=A0 You'd previously talked about the SD card on the N321, but the=
re's
    NO WAY that could be used for buffering--for one, it's<br>
    =C2=A0 dedicated to the Linux filesystem on the device, and for a sec=
ond,
    it's VASTLY TOO SLOW.=C2=A0=C2=A0 The DRAM on the N321 is dedicated<b=
r>
    =C2=A0 as far as I know, to the Linux CPU and if any of it is availab=
le
    for the FPGA AT ALL, it's not going to be very much, and it's<br>
    =C2=A0 likely FIXED TO A SPECIFIC VALUE by the implementation.<br>
    <br>
    If you're seeing very-occasional LLL and U at very-high rates (and
    believe me, multiple channels at 245Msps are *very high rates*),<br>
    =C2=A0 then your issue is likely not strictly buffering related, but
    related to something that Linux may be doing on your host "once in a
    while"<br>
    =C2=A0 that changes the performance dynamics.<br>
    <br>
    <br>
  </body>
</html>

--------------04CE07D2D1BB60D0B6E2BA6C--

--===============2988767681178307539==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2988767681178307539==--
