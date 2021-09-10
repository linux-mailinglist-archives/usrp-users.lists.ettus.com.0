Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8893D407349
	for <lists+usrp-users@lfdr.de>; Sat, 11 Sep 2021 00:19:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8D4A3384064
	for <lists+usrp-users@lfdr.de>; Fri, 10 Sep 2021 18:19:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VL1ATDLv";
	dkim-atps=neutral
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id D1ED8384527
	for <usrp-users@lists.ettus.com>; Fri, 10 Sep 2021 18:18:26 -0400 (EDT)
Received: by mail-qt1-f182.google.com with SMTP id s15so2877175qta.10
        for <usrp-users@lists.ettus.com>; Fri, 10 Sep 2021 15:18:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=/W0H4Kgv/cM9qrFdEmdiJo+qgaZ42gyCdi2Ex8dd4Gg=;
        b=VL1ATDLvjhVEP7q/jMbS8Tz5/QgQN3WqlGXsW9NVB9DbcLi7/RBNfp8sLnZ8j6c573
         nbApcxuDj7oYXxym74l95r4O+/Fb3y1jKBQk/n7qI7cMqk8J8AbBWxpx70oJ0W2O3VI5
         dsrvQItH3aZ1dsMobTR6afnQ8FCyS6MRSfYYR4DQRmuPAd6YltWUcedrUhYu0wSFpIKF
         o5UyBTL8XPbOBmo3NupljkYZaE60WixX9Y+X5YdBsZmj++5I2RGzVtKqhGYfandSjujW
         pcayw/C3fOAgN6FpJLgYm+n9WC69eWn+gXPfz782mn4+T2mTSMKNH+gy5OxVIdt0bdVJ
         7kYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=/W0H4Kgv/cM9qrFdEmdiJo+qgaZ42gyCdi2Ex8dd4Gg=;
        b=wC9hdDs6oPmk9MOK2ZhhtvvsIdp8P3oPUAdt0WrB9fb8otaLfSuIDX3fCYGBwBTH06
         E1FRaxzbKtNqVZ0AFJhGpQePvVkMX4ENY8/z/B8FW3jcmvcnvfj4lsYBxaxEMQYH8c5I
         q5F/XF8pTAQVVTBM4h2WCEs721q/KQdgFLaJJlaXpHrhF98OCap/uugN9L4viT2lNPDk
         oUevIoF/vCr7NK3jm+DIFt91r+JF5pr+tnR3mUXyMluXSfXw89x85vGVb+0z6Pf6JVGO
         VYANJcvfrKK3sgyL/0Rv3hYmEtSpIS5sT8Y7EmHRRDxnW3JJ1VGCt4Q+vIE284gJOGQ2
         d/VQ==
X-Gm-Message-State: AOAM530VT7BXMhdCx1tZBVHcx+OmJaFxL6BgyKTBrdiCRWkTvfTSg/xu
	WpWBjSj7UgMle4dnF249ubqU+9GxI8R9Ow==
X-Google-Smtp-Source: ABdhPJy98JfqyU/KDibJ7R7CU/j/wrUR+naiwzlzUoSQAaseGnvhe5EXtlRBHNPkEacRqSt+AFeoEA==
X-Received: by 2002:a05:622a:170a:: with SMTP id h10mr10089328qtk.327.1631312306076;
        Fri, 10 Sep 2021 15:18:26 -0700 (PDT)
Received: from [192.168.2.249] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id r23sm3985307qtp.60.2021.09.10.15.18.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Sep 2021 15:18:25 -0700 (PDT)
To: zhou <hwzhou@yahoo.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <b24ff5bf-8432-8b63-d75c-82631e45fd9f@cttc.es>
 <CAL7q81tPjxNWaUbf-2v3dEtsxYgh6QGjV-+LmwCjwG50xgRZTw@mail.gmail.com>
 <CAFOi1A4JzCrx1NVi9YdwJ3LC3qu0+9VSKVSBWXekk7J=75qHtQ@mail.gmail.com>
 <0fbeadc5-adf2-8315-f7cd-e95a8ab00703@gmail.com>
 <804336125.2658048.1631299169124@mail.yahoo.com>
 <32b873e4-404d-2b27-61d9-2dd53fd0689a@gmail.com>
 <899213065.2697497.1631311503116@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <6b46431b-cf2a-4796-c707-cce4ea524c6a@gmail.com>
Date: Fri, 10 Sep 2021 18:18:24 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <899213065.2697497.1631311503116@mail.yahoo.com>
Content-Language: en-US
Message-ID-Hash: BHHESDIRAMAQJMEEYLDFMMDI5C2DWSAA
X-Message-ID-Hash: BHHESDIRAMAQJMEEYLDFMMDI5C2DWSAA
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Configure send_buff_size in N321 USRP
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BHHESDIRAMAQJMEEYLDFMMDI5C2DWSAA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8425799450954120421=="

This is a multi-part message in MIME format.
--===============8425799450954120421==
Content-Type: multipart/alternative;
 boundary="------------FC7F0FEEB609446C13FA61A1"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------FC7F0FEEB609446C13FA61A1
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-09-10 6:05 p.m., zhou wrote:
> Hi Marcus, thanks for your reply.
> No, I am not on MacOS. I am using Ubuntu. How can I configure send=20
> buff size in Linux?
> I went through the uhd library but could not see it had any limit on=20
> buffer size. So, very strange where the buffer limit comes from.
>
> How do I measure the buffer?
> I created a packet of 245760 bytes, and I set metadata.has_time_spec=C2=
=A0=20
> =3D true, and configure metadata.time_spec to a future time, then I sen=
t=20
> the packets. Before metadata.time_spec, the sent packets would be=20
> stored in the buffer. When send() was blocked, it meant the buffer was=20
> full. I counted; after 4 packets, send got blocked. Only after time=20
> passed metadata.time_spec, the packets in buffer were consumed, I=20
> could send another packet.
I'm not sure how much TX buffer space the N321 has in the FPGA, but it=20
sounds like that's what you're running into.=C2=A0 I would expect it
 =C2=A0 to be very very much smaller than the amount of buffer available =
on=20
the host.=C2=A0 I don't think UHD will "hold on" to packets on the host
 =C2=A0 side if it isn't quite time for them to be sent.=C2=A0 It sends t=
hem to=20
the device, and if there isn't room on the device (because of
 =C2=A0 timed send), then it must necessarily ask the host to hold on to =
them.

It pretty-much HAS to work this way, since the host side has very little=20
control over latency, it has no way of really knowing
 =C2=A0 when it is safe to "release" timed TX packets to the actual hardw=
are,=20
so it sends them to the hardware immediately.

One of the devs might be able to clarify, but that's my understanding.


>
> On Friday, 10 September 2021, 19:53:29 BST, Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>
> On 2021-09-10 2:39 p.m., zhou wrote:
> Hi,
>
> I am trying to increase the buffer size in tx.
>
> According to https://files.ettus.com/manual/page_transport.html=20
> <https://files.ettus.com/manual/page_transport.html>,
>
> =C2=A0it seems that we can change the default *send_buff_size *by=20
> specifying value in device arguments. I tried the following configurati=
on:
> uhd::usrp::multi_usrp::make('addr=3D192.168.12.2,=20
> second_addr=3D192.168.13.2, mgmt_addr=3D192.168.10.16,=20
> master_clock_rate=3D245.76e6, type=3Dn3xx, *send_buff_size*=3D33554432'=
)
>
> But this didn't have any impact. I measured that the actual buffer is=20
> always about ~1MB.
> How did you measure the buffer?
>
>
>>
>> Then in UHD library, I find the following limit:
>> static const size_t MAX_BUFF_SIZE_ETH_MACOS =3D 0x100000; // 1Mib
>>
>> =C2=A0 =C2=A0 if (link_params.send_buff_size > MAX_BUFF_SIZE_ETH_MACOS=
) {
>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 link_params.send_buff_size =3D MAX_BUFF_SI=
ZE_ETH_MACOS;
>> =C2=A0 =C2=A0 }
>>
> Are you on MacOS?=C2=A0=C2=A0 If not, that code isn't relevant. That co=
de=20
> doesn't even get compiled unless you're
> =C2=A0 on MacOS.
>
>
>> 33554432 > 1048576 (1Mib), so this may be why the above config didn't=20
>> work. Then I tried the following configuration:
>> uhd::usrp::multi_usrp::make('addr=3D192.168.12.2,second_addr=3D192.168=
.13.2,mgmt_addr=3D192.168.10.16,master_clock_rate=3D245.76e6,type=3Dn3xx,=
*send_buff_size*=3D524288')
>>
>> This one didn't have any impact either.
>> So, am I wrong in configuring *send_buff_size *in this way? what is=20
>> the correct way?
>>
>> 1M buffer size is too small for my application. I am using sampling=20
>> rate 245.76MHz. This buffer can only save data up to 0.5ms. I want to=20
>> allocate a bigger buffer to achieve better reliability.
>>
>> Thanks for any comment.
>>
>>
>>
>>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com=20
> <mailto:usrp-users@lists.ettus.com>
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com=20
> <mailto:usrp-users-leave@lists.ettus.com>
>


--------------FC7F0FEEB609446C13FA61A1
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-10 6:05 p.m., zhou wrote:<b=
r>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:899213065.2697497.1631311503116@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydpec1c33byahoo-style-wrap" style=3D"font-family:
        Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 13px;">
        <div dir=3D"ltr" data-setdir=3D"false">Hi Marcus, thanks for your
          reply.</div>
        <div dir=3D"ltr" data-setdir=3D"false">No, I am not on MacOS. I a=
m
          using Ubuntu. How can I configure send buff size in Linux?</div=
>
        <div dir=3D"ltr" data-setdir=3D"false">I went through the uhd
          library but could not see it had any limit on buffer size. So,
          very strange where the buffer limit comes from.</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">How do I measure the buffe=
r?</div>
        <div dir=3D"ltr" data-setdir=3D"false">I created a packet of=C2=A0=
<span>245760
            bytes, and I set=C2=A0<span>metadata.has_time_spec=C2=A0 =3D =
true, and
              configure=C2=A0<span>metadata.time_spec to a future time, t=
hen
                I sent the packets. Before <span><span style=3D"color:
                    rgb(0, 0, 0); font-family: Helvetica Neue,
                    Helvetica, Arial, sans-serif;">metadata.time_spec,
                    the sent packets would be stored in the buffer. When
                    send() was blocked, it meant the buffer was full. I
                    counted; a</span></span>fter 4 packets, send got
                blocked. Only after time passed=C2=A0<span><span
                    style=3D"color: rgb(0, 0, 0); font-family: Helvetica
                    Neue, Helvetica, Arial, sans-serif;">metadata.time_sp=
ec,
                    the packets in buffer were consumed, I could send
                    another packet.</span></span></span></span></span></d=
iv>
      </div>
    </blockquote>
    I'm not sure how much TX buffer space the N321 has in the FPGA, but
    it sounds like that's what you're running into.=C2=A0 I would expect =
it<br>
    =C2=A0 to be very very much smaller than the amount of buffer availab=
le
    on the host.=C2=A0 I don't think UHD will "hold on" to packets on the
    host<br>
    =C2=A0 side if it isn't quite time for them to be sent.=C2=A0 It send=
s them to
    the device, and if there isn't room on the device (because of<br>
    =C2=A0 timed send), then it must necessarily ask the host to hold on =
to
    them.<br>
    <br>
    It pretty-much HAS to work this way, since the host side has very
    little control over latency, it has no way of really knowing<br>
    =C2=A0 when it is safe to "release" timed TX packets to the actual
    hardware, so it sends them to the hardware immediately.<br>
    <br>
    One of the devs might be able to clarify, but that's my
    understanding.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:899213065.2697497.1631311503116@mail.yahoo.com">
      <div class=3D"ydpec1c33byahoo-style-wrap" style=3D"font-family:
        Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 13px;">
        <div dir=3D"ltr" data-setdir=3D"false"><span><span><span><span><s=
pan
                    style=3D"color: rgb(0, 0, 0); font-family: Helvetica
                    Neue, Helvetica, Arial, sans-serif;">=C2=A0</span></s=
pan></span></span></span></div>
        <div><br>
        </div>
      </div>
      <div id=3D"ydp18a06c0yahoo_quoted_1837252270"
        class=3D"ydp18a06c0yahoo_quoted">
        <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial,
          sans-serif;font-size:13px;color:#26282a;">
          <div> On Friday, 10 September 2021, 19:53:29 BST, Marcus D.
            Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patch=
vonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> wrote: </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>
            <div id=3D"ydp18a06c0yiv5378333377">
              <div>
                <div class=3D"ydp18a06c0yiv5378333377moz-cite-prefix">On
                  2021-09-10 2:39 p.m., zhou wrote:<br clear=3D"none">
                </div>
                <blockquote type=3D"cite"> </blockquote>
              </div>
              <div>
                <div
                  class=3D"ydp18a06c0yiv5378333377ydpa2579362yahoo-style-=
wrap"
                  style=3D"font-family:Helvetica Neue, Helvetica, Arial,
                  sans-serif;font-size:13px;">
                  <div dir=3D"ltr"><span>Hi,</span></div>
                  <div dir=3D"ltr"><span><br clear=3D"none">
                    </span></div>
                  <div dir=3D"ltr"><span>I am trying to increase the
                      buffer size in tx.</span></div>
                  <div dir=3D"ltr"><span><br clear=3D"none">
                    </span></div>
                  <div dir=3D"ltr"><span>According to=C2=A0</span><a
                      shape=3D"rect" class=3D"ydp18a06c0yiv5378333377"
                      href=3D"https://files.ettus.com/manual/page_transpo=
rt.html"
                      rel=3D"nofollow" target=3D"_blank"
                      moz-do-not-send=3D"true">https://files.ettus.com/ma=
nual/page_transport.html</a>,=C2=A0</div>
                  <div><br clear=3D"none">
                  </div>
                  <div dir=3D"ltr">=C2=A0it seems that we can change the
                    default=C2=A0<span><span style=3D"color:rgb(0, 0,
                        0);font-family:Helvetica Neue, Helvetica, Arial,
                        sans-serif;"><b>send_buff_size </b>by
                        specifying value in device arguments. I tried
                        the following configuration:</span></span></div>
                  <div dir=3D"ltr"> <span>uhd::usrp::multi_usrp::make(</s=
pan>'addr=3D192.168.12.2,
                    second_addr=3D192.168.13.2, mgmt_addr=3D192.168.10.16=
,
                    master_clock_rate=3D245.76e6, type=3Dn3xx,=C2=A0<b>se=
nd_buff_size</b>=3D33554432')<br
                      clear=3D"none">
                  </div>
                  <div dir=3D"ltr"><br clear=3D"none">
                  </div>
                  <div dir=3D"ltr"><span><span><span style=3D"color:rgb(0=
,
                          0, 0);font-family:Helvetica Neue, Helvetica,
                          Arial, sans-serif;">But this didn't have any
                          impact. I measured that the actual buffer is
                          always about ~1MB.</span></span></span></div>
                </div>
                How did you measure the buffer?<br clear=3D"none">
                <br clear=3D"none">
                <br clear=3D"none">
                <blockquote type=3D"cite">
                  <div
                    class=3D"ydp18a06c0yiv5378333377ydpa2579362yahoo-styl=
e-wrap"
                    style=3D"font-family:Helvetica Neue, Helvetica, Arial=
,
                    sans-serif;font-size:13px;">
                    <div dir=3D"ltr"><span><span><span style=3D"color:rgb=
(0,
                            0, 0);font-family:Helvetica Neue, Helvetica,
                            Arial, sans-serif;"><br clear=3D"none">
                          </span></span></span></div>
                    <div dir=3D"ltr">Then in UHD library, I find the
                      following limit:<br clear=3D"none">
                    </div>
                    <div dir=3D"ltr"><span> </span>
                      <div>
                        <div dir=3D"ltr">
                          <div>
                            <div dir=3D"ltr" style=3D"color:rgb(0, 0,
                              0);font-family:Helvetica Neue, Helvetica,
                              Arial, sans-serif;">static const size_t
                              MAX_BUFF_SIZE_ETH_MACOS =3D 0x100000; //
                              1Mib</div>
                            <div><br clear=3D"none">
                            </div>
                          </div>
                          =C2=A0 =C2=A0 if (link_params.send_buff_size &g=
t;
                          MAX_BUFF_SIZE_ETH_MACOS) {</div>
                        <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 link_params.send=
_buff_size =3D
                          MAX_BUFF_SIZE_ETH_MACOS;</div>
                        <div>=C2=A0 =C2=A0 }</div>
                        <div dir=3D"ltr"><br clear=3D"none">
                        </div>
                      </div>
                    </div>
                  </div>
                </blockquote>
                Are you on MacOS?=C2=A0=C2=A0 If not, that code isn't rel=
evant.=C2=A0
                That code doesn't even get compiled unless you're<br
                  clear=3D"none">
                =C2=A0 on MacOS.
                <div class=3D"ydp18a06c0yiv5378333377yqt4910377105"
                  id=3D"ydp18a06c0yiv5378333377yqtfd24992"><br
                    clear=3D"none">
                  <br clear=3D"none">
                  <blockquote type=3D"cite">
                    <div
                      class=3D"ydp18a06c0yiv5378333377ydpa2579362yahoo-st=
yle-wrap"
                      style=3D"font-family:Helvetica Neue, Helvetica,
                      Arial, sans-serif;font-size:13px;">
                      <div dir=3D"ltr"><span> </span>
                        <div dir=3D"ltr"><span><span style=3D"color:rgb(0=
,
                              0, 0);font-family:Helvetica Neue,
                              Helvetica, Arial, sans-serif;">33554432
                              &gt; <span>1048576 (</span>1Mib), so this
                              may be why the above config didn't work.
                              Then I tried the following configuration:</=
span></span><br
                            clear=3D"none">
                        </div>
                        <div dir=3D"ltr">
                          <div>
                            <div dir=3D"ltr" style=3D"color:rgb(0, 0,
                              0);font-family:Helvetica Neue, Helvetica,
                              Arial, sans-serif;">uhd::usrp::multi_usrp::=
make('addr=3D192.168.12.2,second_addr=3D192.168.13.2,mgmt_addr=3D192.168.=
10.16,master_clock_rate=3D245.76e6,type=3Dn3xx,<b>send_buff_size</b>=3D52=
4288')<br
                                clear=3D"none">
                            </div>
                            <div dir=3D"ltr" style=3D"color:rgb(0, 0,
                              0);font-family:Helvetica Neue, Helvetica,
                              Arial, sans-serif;"><br clear=3D"none">
                            </div>
                            <div dir=3D"ltr" style=3D"color:rgb(0, 0,
                              0);font-family:Helvetica Neue, Helvetica,
                              Arial, sans-serif;">This one didn't have
                              any impact either.</div>
                            <div dir=3D"ltr" style=3D"color:rgb(0, 0,
                              0);font-family:Helvetica Neue, Helvetica,
                              Arial, sans-serif;">So, am I wrong in
                              configuring=C2=A0<span><span
                                  style=3D"color:rgb(0, 0,
                                  0);font-family:Helvetica Neue,
                                  Helvetica, Arial, sans-serif;"><b>send_=
buff_size
                                  </b>in this way? what is the correct
                                  way?</span></span></div>
                            <div dir=3D"ltr" style=3D"color:rgb(0, 0,
                              0);font-family:Helvetica Neue, Helvetica,
                              Arial, sans-serif;"><span><span
                                  style=3D"color:rgb(0, 0,
                                  0);font-family:Helvetica Neue,
                                  Helvetica, Arial, sans-serif;"><br
                                    clear=3D"none">
                                </span></span></div>
                            <div dir=3D"ltr" style=3D"color:rgb(0, 0,
                              0);font-family:Helvetica Neue, Helvetica,
                              Arial, sans-serif;"><span><span
                                  style=3D"color:rgb(0, 0,
                                  0);font-family:Helvetica Neue,
                                  Helvetica, Arial, sans-serif;">1M
                                  buffer size is too small for my
                                  application. I am using sampling rate
                                  245.76MHz. This buffer can only save
                                  data up to 0.5ms. I want to allocate a
                                  bigger buffer to achieve better
                                  reliability.</span></span></div>
                            <div dir=3D"ltr" style=3D"color:rgb(0, 0,
                              0);font-family:Helvetica Neue, Helvetica,
                              Arial, sans-serif;"><span><span
                                  style=3D"color:rgb(0, 0,
                                  0);font-family:Helvetica Neue,
                                  Helvetica, Arial, sans-serif;"><br
                                    clear=3D"none">
                                </span></span></div>
                            <div dir=3D"ltr" style=3D"color:rgb(0, 0,
                              0);font-family:Helvetica Neue, Helvetica,
                              Arial, sans-serif;"><span><span
                                  style=3D"color:rgb(0, 0,
                                  0);font-family:Helvetica Neue,
                                  Helvetica, Arial, sans-serif;">Thanks
                                  for any comment.</span></span></div>
                            <div dir=3D"ltr" style=3D"color:rgb(0, 0,
                              0);font-family:Helvetica Neue, Helvetica,
                              Arial, sans-serif;"><span><span
                                  style=3D"color:rgb(0, 0,
                                  0);font-family:Helvetica Neue,
                                  Helvetica, Arial, sans-serif;"><br
                                    clear=3D"none">
                                </span></span></div>
                            <div dir=3D"ltr" style=3D"color:rgb(0, 0,
                              0);font-family:Helvetica Neue, Helvetica,
                              Arial, sans-serif;"><br clear=3D"none">
                            </div>
                            <div><br clear=3D"none">
                            </div>
                          </div>
                          <br clear=3D"none">
                        </div>
                      </div>
                    </div>
                  </blockquote>
                  <br clear=3D"none">
                </div>
              </div>
            </div>
            _______________________________________________<br
              clear=3D"none">
            USRP-users mailing list -- <a shape=3D"rect"
              href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"nofollow"
              target=3D"_blank" moz-do-not-send=3D"true">usrp-users@lists=
.ettus.com</a><br
              clear=3D"none">
            To unsubscribe send an email to <a shape=3D"rect"
              href=3D"mailto:usrp-users-leave@lists.ettus.com"
              rel=3D"nofollow" target=3D"_blank" moz-do-not-send=3D"true"=
>usrp-users-leave@lists.ettus.com</a>
            <div class=3D"ydp18a06c0yqt4910377105"
              id=3D"ydp18a06c0yqtfd94940"><br clear=3D"none">
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------FC7F0FEEB609446C13FA61A1--

--===============8425799450954120421==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8425799450954120421==--
