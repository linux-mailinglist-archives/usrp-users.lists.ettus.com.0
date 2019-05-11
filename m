Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9171A951
	for <lists+usrp-users@lfdr.de>; Sat, 11 May 2019 22:01:57 +0200 (CEST)
Received: from [::1] (port=49112 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hPYBt-0002Nd-GQ; Sat, 11 May 2019 16:01:53 -0400
Received: from mail-lj1-f180.google.com ([209.85.208.180]:45571)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <adray0001@gmail.com>) id 1hPYBL-0002Dy-8P
 for usrp-users@lists.ettus.com; Sat, 11 May 2019 16:01:49 -0400
Received: by mail-lj1-f180.google.com with SMTP id r76so7755670lja.12
 for <usrp-users@lists.ettus.com>; Sat, 11 May 2019 13:00:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=siMtDYg0AUo/QzMy2xcqFdzP8SN+ohe9lg5BCuGVTWs=;
 b=Hkw8NmtbXeVCdWlbtW8t1+nXXxgmlX1iOcl+ER6a1HKRLeHzx+YF+HgV8YXzfQ1Lld
 DlPJzw4N8zYD8gpnbA1ny677hGItrbEXFKR0ry1W+Puopp83mW7useI5BQ2vJlR7lJXS
 xyWauatfY/wzntuvHT5VovFgNTjOgjurVK8JHY8BO6rO52+dshnw4J0t7cTTNGlV3vgq
 u/9JbR0HcC9wUf8/p3sZc0VgxQZayPS3XK60RxkKsZWtanCkUUhH6g39/N9FVlFH+vqy
 DzDjQYAbKyJoZacs/uPbpsZ3yibvHWuVwZbD0bEgjZ99H25QBpj1r2YbESxmnxcdQG/3
 B3jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=siMtDYg0AUo/QzMy2xcqFdzP8SN+ohe9lg5BCuGVTWs=;
 b=WgMRzMjyoVkNvvsXOAKzyYJQVI6PeXGf60jKTAfy16yZtAzVY93IaarDc6GAkDuSIp
 bRuogqBB3Cy3g19bCVi47suwqcDZh9hHnSXJ4XN6wzvSTvhlE/sDACZb19Rf6I7ye/Qq
 VbrJYJtEY9yhQOwYZYIw59U97OELzIqiOu6wMul7U4cFbTWtozxscfRf6ZzwGWnkbpFN
 su7CcPay/+9Oblob/sEEqiLo9wTtCcPGAbF+ggxj+BsD9zHbVfLtPrZ0DNajQhCIGvQu
 xjrNgtNAkNS6HhTpqsJrK3Heov/0Wiv78riEdq633Axgi6cFiZ/iGBX6vLXNkYIbYvk2
 L22Q==
X-Gm-Message-State: APjAAAWA6rn2WF50OLqhyZi+d6b5emnHxwOdGaT6MYcI9/Ge7iaSk6yN
 a9F9tQsnaDLw2hgz6/AlbR6Ie0m9ii3IKfxod6abZrGG
X-Google-Smtp-Source: APXvYqx5qIir4nUoJBVuqiIyRk4esgcFlTHbcG42VgOuM1R3feGtikOkiEjjhMWsmqLZndS06SVVxcyQz/a8xYDoJLw=
X-Received: by 2002:a2e:7f13:: with SMTP id a19mr9434238ljd.35.1557604837793; 
 Sat, 11 May 2019 13:00:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAPRRyxuCDNGcewqw7Y6A=a-cgU8DN9s6Sbg7JVSHbuYHJBD=hA@mail.gmail.com>
 <5db613d9e0f5e53ad04b8e730a3aa4d9b25df12c.camel@ettus.com>
In-Reply-To: <5db613d9e0f5e53ad04b8e730a3aa4d9b25df12c.camel@ettus.com>
Date: Sat, 11 May 2019 20:00:26 +0300
Message-ID: <CAPRRyxtWDcpUEoJF6teLPVN8nrNXEuH0HULt2orMetOvCzEf8w@mail.gmail.com>
To: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>, 
 usrp-users <usrp-users@lists.ettus.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Reading samples with b200 using num_sams_and_done
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Ivan Zahartchuk via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ivan Zahartchuk <adray0001@gmail.com>
Content-Type: multipart/mixed; boundary="===============1452844377613300980=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============1452844377613300980==
Content-Type: multipart/alternative; boundary="0000000000000ea2fa0588a2232f"

--0000000000000ea2fa0588a2232f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Sorry I did not specify. When working with the start_cont mode with a
frequency of more than 5 MHz, I have an overflow error. That leads to a
chaotic change in the spectrum. I agree about the wrong allocation of
memory, but I created my own data array and ran it through the whole chain
of changes and additions and had what I expected at the output. Moreover,
the data array was much more than what I get from the board. In this
regard, I decided that the matter is in the reading from the board. I have
seen examples, but start_cont mode is used there and there are not so many
frequency adjustments. Therefore, I decided to use the num_sams_and_done
mode, but there is also a problem with it which is described in the
previous message. If you have more suggestions, I will be very grateful to
you.

=D1=81=D0=B1, 11 =D0=BC=D0=B0=D1=8F 2019 =D0=B3. =D0=B2 22:27, Marcus M=C3=
=BCller <marcus.mueller@ettus.com>:

> Dear Ivan,
>
> it's not clear what you've modified. I'm not aware of any UHD function
> that restricts any frequency to 5 MHz.
> Could you elaborate on which code you're basing this on?
>
> Also, while I really like the Python interface, if you're really after
> high-rate sampling, it might simply not be the optimal thing to use:
> You'd have to be very careful in Pythonland to not run into performance
> problems once you've gotten the samples from UHD:
>
>         complex_buffs=3Dnp.append(complex_buffs,result).ravel()
>
> A very bad idea. You're constantly re-allocating buffers here. Don't do
> that. No matter in which programming language you'd do this, you'd make
> sure that the buffer is large enough for your data collection to begin
> with and then tell the UHD library to fill the appropriate part in that
> buffer to avoid a) having to ask for a larger buffer regularly and b)
> avoid copying data.
> Asking for an appended version of your last buffer means that something
> has to allocate a larger buffer =E2=80=93 which comes at very large cost!
>
> Best regards,
> Marcus
>
> On Sat, 2019-05-11 at 21:31 +0300, Ivan Zahartchuk via USRP-users
> wrote:
> > Hello. My task is to make a broadband spectrum analyzer on the usrp
> > b200 board. For this, the standard functions for reading samples in
> > python are not suitable for me. Therefore, I edited them. When
> > reading samples using the start_con method, I cannot specify a band
> > greater than 5 MHz. Therefore, I use the num_sams_and_done method.
> > But I have problems with him. The fact is that my frequency which I
> > know appears in the wrong place. For example, I generate a frequency
> > of 910 MHz and it appears at 930 MHz (with a bandwidth of 20 MHz). I
> > can not understand what caused it. Here are my reading functions in
> > two ways. I would be extremely grateful for the help.
> >
> >
> >
> >
> > def test_reciev(self,freq,bandwich):
> >     complex_buffs=3Dnp.array([])
> >     buffs =3D np.array([])
> >     result =3D np.empty((len([0]), self.samples), dtype=3Dnp.complex64)
> >
> >     for i, freqq in enumerate(freq):
> >
> >         recv_samps =3D 0
> >         #self.usrp.set_rx_rate(bandwich[i])
> >         k=3Duhd.types.TuneRequest(freqq)
> >         #k.args(uhd.types.device_addr("mode_n=3Dinteger"))
> >         self.usrp.set_rx_freq(k)
> >         self.stream_cmd =3D
> > uhd.types.StreamCMD(uhd.types.StreamMode.start_cont)
> >         self.stream_cmd.stream_now =3D True
> >         self.streamer_rx.issue_stream_cmd(self.stream_cmd)
> >         while self.usrp.get_rx_sensor("lo_locked").to_bool() !=3D True:
> >             continue
> >
> >         samps =3D np.array([], dtype=3Dnp.complex64)
> >         while recv_samps < self.samples:
> >
> >             samps =3D self.streamer_rx.recv(self.recv_buff,
> > self.metadata_rx)
> >             if self.metadata_rx.error_code !=3D
> > lib.types.rx_metadata_error_code.none:
> >                 print(self.metadata_rx.strerror())
> >             if samps:
> >                 real_samps =3D min(self.samples - recv_samps, samps)
> >                 result[:, recv_samps:recv_samps + real_samps] =3D
> > self.recv_buff[:, 0:real_samps]
> >                 recv_samps +=3D real_samps
> >         #print (self.usrp.get_rx_sensor('rssi'))
> >         #print(self.streamer_rx.get_max_num_samps())
> >         #while samps:
> >         #    samps =3D self.streamer_rx.recv(self.recv_buff,
> > self.metadata_rx)
> >
> >
> >         #self.stream_cmd.time_spec =3D lib.types.time_spec(0)
> >         self.stream_cmd =3D
> > lib.types.stream_cmd(lib.types.stream_mode.stop_cont)
> >         self.streamer_rx.issue_stream_cmd(self.stream_cmd)
> >
> >         complex_buffs=3Dnp.append(complex_buffs,result).ravel()
> >         #correct_result=3Dresult
> >         correct_result_1=3Dresult-
> > (np.mean(result.real)+np.mean(result.imag)*1j)
> >         #correct_result.real=3Dresult.real-np.mean(result.real)
> >         #correct_result.imag =3D result.imag - np.mean(result.imag)
> >
> >         PSD =3D  self.fft_test(result)
> >
> >
> >         #PSD[8188:8202]=3Dnp.mean(PSD[8180:8188])
> >
> >
> >         buffs =3D np.append(buffs,PSD)
> >
> >
> >
> >     return complex_buffs,
> > buffs#np.append(buffs[value.samples:],buffs[:value.samples])
> >
> >
> >
> > def test_reciev(self,freq,bandwich):
> >     complex_buffs=3Dnp.array([])
> >     buffs =3D np.array([])
> >     result =3D np.empty((len([0]), self.samples), dtype=3Dnp.complex64)
> >
> >     for i, freqq in enumerate(freq):
> >
> >         recv_samps =3D 0
> >         #self.usrp.set_rx_rate(bandwich[i])
> >         k=3Duhd.types.TuneRequest(freqq)
> >         #k.args(uhd.types.device_addr("mode_n=3Dinteger"))
> >         self.usrp.set_rx_freq(k)
> >
> >         while self.usrp.get_rx_sensor("lo_locked").to_bool() !=3D True:
> >             continue
> >
> >
> >         while recv_samps < self.samples:
> >
> >             samps =3D self.streamer_rx.recv(self.recv_buff,
> > self.metadata_rx)
> >             if self.metadata_rx.error_code !=3D
> > lib.types.rx_metadata_error_code.none:
> >                 print(self.metadata_rx.strerror())
> >             if samps:
> >                 real_samps =3D min(self.samples - recv_samps, samps)
> >                 result[:, recv_samps:recv_samps + real_samps] =3D
> > self.recv_buff[:, 0:real_samps]
> >                 recv_samps +=3D real_samps
> >         #print (self.usrp.get_rx_sensor('rssi'))
> >
> >
> >         self.stream_cmd.time_spec =3D lib.types.time_spec(0)
> >         self.streamer_rx.issue_stream_cmd(self.stream_cmd)
> >
> >         complex_buffs=3Dnp.append(complex_buffs,result).ravel()
> >         correct_result=3Dresult
> >         correct_result_1=3Dresult-
> > (np.mean(result.real)+np.mean(result.imag)*1j)
> >         correct_result.real=3Dresult.real-np.mean(result.real)
> >         correct_result.imag =3D result.imag - np.mean(result.imag)
> >
> >         PSD =3D  self.fft_test(result)
> >
> >
> >         #PSD[8188:8202]=3Dnp.mean(PSD[8180:8188])
> >
> >
> >         buffs =3D np.append(buffs,PSD)
> >
> >
> >
> >     return complex_buffs,
> > buffs#np.append(buffs[value.samples:],buffs[:value.samples])
> >
> >
> >
> >
> >
> >
> >
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>

--0000000000000ea2fa0588a2232f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Sorry I did not specify. When working wit=
h the start_cont mode with a frequency of more than 5 MHz, I have an overfl=
ow error. That leads to a chaotic change in the spectrum. I agree about the=
 wrong allocation of memory, but I created my own data array and ran it thr=
ough the whole chain of changes and additions and had what I expected at th=
e output. Moreover, the data array was much more than what I get from the b=
oard. In this regard, I decided that the matter is in the reading from the =
board. I have seen examples, but start_cont mode is used there and there ar=
e not so many frequency adjustments. Therefore, I decided to use the num_sa=
ms_and_done mode, but there is also a problem with it which is described in=
 the previous message. If you have more suggestions, I will be very gratefu=
l to you.<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">=D1=81=D0=B1, 11 =D0=BC=D0=B0=D1=8F 2019 =D0=B3. =D0=B2 =
22:27, Marcus M=C3=BCller &lt;<a href=3D"mailto:marcus.mueller@ettus.com">m=
arcus.mueller@ettus.com</a>&gt;:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">Dear Ivan,<br>
<br>
it&#39;s not clear what you&#39;ve modified. I&#39;m not aware of any UHD f=
unction<br>
that restricts any frequency to 5 MHz.<br>
Could you elaborate on which code you&#39;re basing this on?<br>
<br>
Also, while I really like the Python interface, if you&#39;re really after<=
br>
high-rate sampling, it might simply not be the optimal thing to use:<br>
You&#39;d have to be very careful in Pythonland to not run into performance=
<br>
problems once you&#39;ve gotten the samples from UHD:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 complex_buffs=3Dnp.append(complex_buffs,result)=
.ravel()<br>
<br>
A very bad idea. You&#39;re constantly re-allocating buffers here. Don&#39;=
t do<br>
that. No matter in which programming language you&#39;d do this, you&#39;d =
make<br>
sure that the buffer is large enough for your data collection to begin<br>
with and then tell the UHD library to fill the appropriate part in that<br>
buffer to avoid a) having to ask for a larger buffer regularly and b)<br>
avoid copying data.<br>
Asking for an appended version of your last buffer means that something<br>
has to allocate a larger buffer =E2=80=93 which comes at very large cost!<b=
r>
<br>
Best regards,<br>
Marcus <br>
<br>
On Sat, 2019-05-11 at 21:31 +0300, Ivan Zahartchuk via USRP-users<br>
wrote:<br>
&gt; Hello. My task is to make a broadband spectrum analyzer on the usrp<br=
>
&gt; b200 board. For this, the standard functions for reading samples in<br=
>
&gt; python are not suitable for me. Therefore, I edited them. When<br>
&gt; reading samples using the start_con method, I cannot specify a band<br=
>
&gt; greater than 5 MHz. Therefore, I use the num_sams_and_done method.<br>
&gt; But I have problems with him. The fact is that my frequency which I<br=
>
&gt; know appears in the wrong place. For example, I generate a frequency<b=
r>
&gt; of 910 MHz and it appears at 930 MHz (with a bandwidth of 20 MHz). I<b=
r>
&gt; can not understand what caused it. Here are my reading functions in<br=
>
&gt; two ways. I would be extremely grateful for the help.<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; def test_reciev(self,freq,bandwich):<br>
&gt;=C2=A0 =C2=A0 =C2=A0complex_buffs=3Dnp.array([])<br>
&gt;=C2=A0 =C2=A0 =C2=A0buffs =3D np.array([])<br>
&gt;=C2=A0 =C2=A0 =C2=A0result =3D np.empty((len([0]), self.samples), dtype=
=3Dnp.complex64)<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0for i, freqq in enumerate(freq):<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0recv_samps =3D 0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#self.usrp.set_rx_rate(bandwich[i])<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0k=3Duhd.types.TuneRequest(freqq)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#k.args(uhd.types.device_addr(&quot;m=
ode_n=3Dinteger&quot;))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.usrp.set_rx_freq(k)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.stream_cmd =3D<br>
&gt; uhd.types.StreamCMD(uhd.types.StreamMode.start_cont)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.stream_cmd.stream_now =3D True<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.streamer_rx.issue_stream_cmd(sel=
f.stream_cmd)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0while self.usrp.get_rx_sensor(&quot;l=
o_locked&quot;).to_bool() !=3D True:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0continue<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0samps =3D np.array([], dtype=3Dnp.com=
plex64)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0while recv_samps &lt; self.samples:<b=
r>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0samps =3D self.streamer=
_rx.recv(self.recv_buff,<br>
&gt; self.metadata_rx)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if self.metadata_rx.err=
or_code !=3D<br>
&gt; lib.types.rx_metadata_error_code.none:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0print(sel=
f.metadata_rx.strerror())<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if samps:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0real_samp=
s =3D min(self.samples - recv_samps, samps)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0result[:,=
 recv_samps:recv_samps + real_samps] =3D<br>
&gt; self.recv_buff[:, 0:real_samps]<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0recv_samp=
s +=3D real_samps<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#print (self.usrp.get_rx_sensor(&#39;=
rssi&#39;))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#print(self.streamer_rx.get_max_num_s=
amps())<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#while samps:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#=C2=A0 =C2=A0 samps =3D self.streame=
r_rx.recv(self.recv_buff,<br>
&gt; self.metadata_rx)<br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#self.stream_cmd.time_spec =3D lib.ty=
pes.time_spec(0)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.stream_cmd =3D<br>
&gt; lib.types.stream_cmd(lib.types.stream_mode.stop_cont)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.streamer_rx.issue_stream_cmd(sel=
f.stream_cmd)<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0complex_buffs=3Dnp.append(complex_buf=
fs,result).ravel()<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#correct_result=3Dresult<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0correct_result_1=3Dresult-<br>
&gt; (np.mean(result.real)+np.mean(result.imag)*1j)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#correct_result.real=3Dresult.real-np=
.mean(result.real)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#correct_result.imag =3D result.imag =
- np.mean(result.imag)<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0PSD =3D=C2=A0 self.fft_test(result)<b=
r>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#PSD[8188:8202]=3Dnp.mean(PSD[8180:81=
88])<br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0buffs =3D np.append(buffs,PSD)<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0return complex_buffs,<br>
&gt; buffs#np.append(buffs[value.samples:],buffs[:value.samples])<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; def test_reciev(self,freq,bandwich):<br>
&gt;=C2=A0 =C2=A0 =C2=A0complex_buffs=3Dnp.array([])<br>
&gt;=C2=A0 =C2=A0 =C2=A0buffs =3D np.array([])<br>
&gt;=C2=A0 =C2=A0 =C2=A0result =3D np.empty((len([0]), self.samples), dtype=
=3Dnp.complex64)<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0for i, freqq in enumerate(freq):<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0recv_samps =3D 0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#self.usrp.set_rx_rate(bandwich[i])<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0k=3Duhd.types.TuneRequest(freqq)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#k.args(uhd.types.device_addr(&quot;m=
ode_n=3Dinteger&quot;))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.usrp.set_rx_freq(k)<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0while self.usrp.get_rx_sensor(&quot;l=
o_locked&quot;).to_bool() !=3D True:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0continue<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0while recv_samps &lt; self.samples:<b=
r>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0samps =3D self.streamer=
_rx.recv(self.recv_buff,<br>
&gt; self.metadata_rx)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if self.metadata_rx.err=
or_code !=3D<br>
&gt; lib.types.rx_metadata_error_code.none:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0print(sel=
f.metadata_rx.strerror())<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if samps:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0real_samp=
s =3D min(self.samples - recv_samps, samps)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0result[:,=
 recv_samps:recv_samps + real_samps] =3D<br>
&gt; self.recv_buff[:, 0:real_samps]<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0recv_samp=
s +=3D real_samps<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#print (self.usrp.get_rx_sensor(&#39;=
rssi&#39;))<br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.stream_cmd.time_spec =3D lib.typ=
es.time_spec(0)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.streamer_rx.issue_stream_cmd(sel=
f.stream_cmd)<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0complex_buffs=3Dnp.append(complex_buf=
fs,result).ravel()<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0correct_result=3Dresult<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0correct_result_1=3Dresult-<br>
&gt; (np.mean(result.real)+np.mean(result.imag)*1j)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0correct_result.real=3Dresult.real-np.=
mean(result.real)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0correct_result.imag =3D result.imag -=
 np.mean(result.imag)<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0PSD =3D=C2=A0 self.fft_test(result)<b=
r>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#PSD[8188:8202]=3Dnp.mean(PSD[8180:81=
88])<br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0buffs =3D np.append(buffs,PSD)<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0return complex_buffs,<br>
&gt; buffs#np.append(buffs[value.samples:],buffs[:value.samples])<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
</blockquote></div>

--0000000000000ea2fa0588a2232f--


--===============1452844377613300980==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1452844377613300980==--

