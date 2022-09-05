Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 827FD5AD538
	for <lists+usrp-users@lfdr.de>; Mon,  5 Sep 2022 16:40:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 638BF380A0C
	for <lists+usrp-users@lfdr.de>; Mon,  5 Sep 2022 10:40:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662388807; bh=lbd7JA0z/misIDbhOdLDFoXR1xsp+2AOg94eU1/AoNI=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=XDnSRHMNENvnMTiqXDbiSHjJMCo69d5LiT5jkgcZ6HuKwk7BCrN6jaRBLP0Ylbt2Z
	 tbKwBaNyFAiUdY6PxfC05IsDQT+Xu0PPdsiMQvFMCcX3MGNqJuCr/9saht63l+IqmT
	 zH/8Tdw9hejNQ22iATEONFmXr+zUGITyMkKuEOh4tuLcPsrrT8Pa/dhFxkerZc6G2/
	 o+YbJXB+EQ7q50dA0tw6P4E+RqKNxVruxjbYSBy84XFyzGQyOWchpCm/4PF2tE+6iw
	 NS5k0HQ16qZICbQAxpIpbGhFoKHIAz92AypmTemcG6L3zHPyZ7iHbJ3YFOLTWbjpZ1
	 4nVYmxHQexfSQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F1A0D380F1F
	for <usrp-users@lists.ettus.com>; Mon,  5 Sep 2022 10:39:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662388753; bh=DxSt8LKuCsdX4egwY8wsUyVGncsVuap7kAW2VQbUxQk=;
	h=Date:To:From:Subject:From;
	b=jVFjTJogqJQiyNxpR5uLlIoK5EeDRoRfDAmNuer/FhQMe2YMKawgtcZvMR1HeSt7N
	 EtQveLESqL6ZD2Phq9gTbbXAy0BqHFsGGd0109Vmdry8DxX3F3bhVYGTUmFjFMT0lu
	 0BTL/HM2+ipfNFJtEFkxAOj0WocOFjevRTXIxQfSdRejYnbve+uySnuFdD6Zr8f+t+
	 JXLm+1BHcCwJL2eZ42+8vxbmFtqvkllVamy72SoSP6ROVQERxnspcE8Cj4zK3Z32MF
	 3V3aSWVexK+wuqPDvU3DHxnMuBPIwTx0jfNDo5rSRgGteySSq1TnnqY41JrduZi6dE
	 HzvM1DB/N/jnA==
Date: Mon, 5 Sep 2022 14:39:12 +0000
To: usrp-users@lists.ettus.com
From: yanzhanggc@gmail.com
Message-ID: <Ucv51sd8QfcKkwEWXkz1gmGCKW5NFL2jNHR7ErW504@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 7QZLN67OTC5TKDIBNBF7LMLF3UQB3GVG
X-Message-ID-Hash: 7QZLN67OTC5TKDIBNBF7LMLF3UQB3GVG
X-MailFrom: yanzhanggc@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E312 ad9361 tuning() source code (new version)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7QZLN67OTC5TKDIBNBF7LMLF3UQB3GVG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1897772375317153009=="

This is a multi-part message in MIME format.

--===============1897772375317153009==
Content-Type: multipart/alternative;
 boundary="b1_Ucv51sd8QfcKkwEWXkz1gmGCKW5NFL2jNHR7ErW504"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Ucv51sd8QfcKkwEWXkz1gmGCKW5NFL2jNHR7ErW504
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi, all,

I am having a USRP E312 and is working on implementing a stepped frequenc=
y radar application. The bandwidth of the radar is 1 GHz and the frequenc=
y step size is 10 MHz. My current implementation is similar to the exampl=
e code =E2=80=9Ctxrx_loopback_to_file.cpp=E2=80=9D : a transmit thread se=
nding a same baseband signal at the background; a loop handling the tunin=
g center frequency and receiving data to a buffer.

The following shows the code snippets.

1. the transmit thread function: just sending a same baseband signal cont=
inuously

void transmit_worker(\
std::vector<std::complex<float>> buff, \
uhd::tx_streamer::sptr tx_streamer, \
uhd::tx_metadata_t metadata, \
int num_channels) {\
std::vector<std::complex<float>\*> buffs(num_channels, &buff.front());

// send data until the signal handler gets called \
while (not stop_signal_called) {\
// send the entire contents of the buffer
tx_streamer->send(buffs, buff.size(), metadata);
metadata.start_of_burst =3D false;
metadata.has_time_spec  =3D false;

}

// send a mini EOB packet metadata.\
end_of_burst =3D true; tx_streamer->send("", 0, metadata);

}

1. the loop handling the tuning and receiving:

// tuning and receiving \
int count =3D 100; // number of frequencies \
int freq_step =3D 10e6; // frequency step size \
double start =3D usrp->get_time_now().get_real_secs(); \
\
for(int i =3D 0; i < count; i++) {\
uhd::tune_request_t tune_request(600e6 + i\*freq_step);\
// tuning
  usrp->set_rx_freq(tune_request, 0);
  usrp->set_tx_freq(tune_request, 0);

 // receive samples
 stream_cmd.time_spec  =3D usrp->get_time_now() + uhd::time_spec_t(0.01);
 rx_stream->issue_stream_cmd(stream_cmd);
 size_t num_rx_samps =3D rx_stream->recv(buff_ptrs\[i\], samps_per_buff, =
md);

}

I use the usrp.get_time_now() function to timing the loop. Here is what I=
=E2=80=99ve found: The uhd ad9361 seems to run a calibration procedure wh=
en there is a frequency jump over 100 MHz. And each calibration takes abo=
ut 2 seconds for my measurements. With my current setup (100 steps and 10=
 MHz frequency step size), the total time of the loop is 25.6 seconds. Th=
ere are 9 calibrations in the loop which takes 18 seconds.

My goal is to find the source code that implements AD9361=E2=80=99s tunin=
g function in the UHD source code so that I can comment out the calibrati=
on part to speed up the frequency tuning.

The following source code files are related to AD9361 tuning:

* the set_tx_frequency() implemented in `uhd/host/lib/usrp/dboard/e3xx/e3=
xx_radio_control_impl.cpp`

double e3xx_radio_control_impl::set_tx_frequency(const double freq, const=
 size_t chan) {

RFNOC_LOG_TRACE("set_tx_frequency(f=3D" << freq << ", chan=3D" << chan <<=
 ")"); std::lock_guard<std::mutex> l(_set_lock);

double clipped_freq =3D uhd::clip(freq, AD9361_TX_MIN_FREQ, AD9361_TX_MAX=
_FREQ);

double coerced_freq =3D _ad9361->tune(get_which_ad9361_chain(TX_DIRECTION=
, chan, _fe_swap), clipped_freq); \
// The E3xx devices have one LO for TX, if we change one channel's freque=
ncy, we change the other, too=20

for (size_t chan_idx =3D 0; chan_idx < E3XX_NUM_CHANS; ++chan_idx) { radi=
o_control_impl::set_tx_frequency(coerced_freq, chan_idx); }

// Front-end switching \
_set_atr_bits(chan);

return coerced_freq;

}

* the tune method in line 227 in the above figure calls the tune() functi=
on in: `uhd/host/lib/usrp/dboard/e3xx/e3xx_ad9361_iface.cpp`

double tune(const std::string& which, const double value) override {

```
// return _rpcc->request_with_token<double>(
//     E3XX_TUNE_TIMEOUT, this->_rpc_prefix + "catalina_tune", which, val=
ue);

    return _rpcc->request_with_token<double>(
    E3XX_TUNE_TIMEOUT, this->_rpc_prefix + "tune", which, value);
```

}

Notice that the original source code is =E2=80=9Ccatalina_tune=E2=80=9D a=
nd I changed it to =E2=80=9Ctune=E2=80=9D because my experiments showed =E2=
=80=9Ctune=E2=80=9D is much faster than =E2=80=9Ccatalina_tune=E2=80=9D.

* Finally, I find the tune() function above seems to call the tune() func=
tion in: `uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp`

const double ad9361_device_t::AD9361_MAX_GAIN =3D 89.75; const double ad9=
361_device_t::AD9361_MIN_CLOCK_RATE =3D 220e3; const double ad9361_device=
_t::AD9361_MAX_CLOCK_RATE =3D 61.44e6; const double ad9361_device_t::AD93=
61_CAL_VALID_WINDOW =3D 100e6; // Max bandwdith is due to filter rolloff =
in analog filter stage const double ad9361_device_t::AD9361_MIN_BW =3D 20=
0e3; const double ad9361_device_t::AD9361_MAX_BW =3D 56e6;

I find in `ad9361_device.cpp `that  AD9361_CAL_VALID_WINDOW is defaulted =
to 100 MHz and I change the 100 MHz to 1 GHz. But nothing seems to change=
, the device still do a calibration every 100 MHz.

I also comment out the calibration code in `uhd/host/lib/usrp/common/ad93=
61_driver/ad9361_device.cppb`, but still nothing seems to be changed. The=
 device is still doing calibration every 100 MHz.

Anyone knows where the source code for tuning ad9361 with E312 device is =
? I wish I can locate the tuning source code so that I can change it to s=
peed up frequency tuning. In my application, if I can turn off the calibr=
ation that happens every 100MHz, then the total tuning time is only 8 sec=
onds, which is just what I need. But I can not locate the true tuning sou=
rce code.

Thanks,

Yan

--b1_Ucv51sd8QfcKkwEWXkz1gmGCKW5NFL2jNHR7ErW504
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi, all,</p><p>I am having a USRP E312 and is working on implementing a =
stepped frequency radar application. The bandwidth of the radar is 1 GHz an=
d the frequency step size is 10 MHz. My current implementation is similar t=
o the example code =E2=80=9Ctxrx_loopback_to_file.cpp=E2=80=9D : a transmit=
 thread sending a same baseband signal at the background; a loop handling t=
he tuning center frequency and receiving data to a buffer.</p><p>The follow=
ing shows the code snippets.</p><ol><li><p>the transmit thread function: ju=
st sending a same baseband signal continuously</p></li></ol><p>void transmi=
t_worker(<br>std::vector&lt;std::complex&lt;float&gt;&gt; buff, <br>uhd::tx=
_streamer::sptr tx_streamer, <br>uhd::tx_metadata_t metadata, <br>int num_c=
hannels) {<br>std::vector&lt;std::complex&lt;float&gt;*&gt; buffs(num_chann=
els, &amp;buff.front());</p><p>// send data until the signal handler gets c=
alled <br>while (not stop_signal_called) {<br>// send the entire contents o=
f the buffer
tx_streamer-&gt;send(buffs, buff.size(), metadata);
metadata.start_of_burst =3D false;
metadata.has_time_spec  =3D false;</p><p>}</p><p>// send a mini EOB packet =
metadata.<br>end_of_burst =3D true; tx_streamer-&gt;send("", 0, metadata);<=
/p><p>}</p><ol><li><p>the loop handling the tuning and receiving:</p></li><=
/ol><p>// tuning and receiving <br>int count =3D 100; // number of frequenc=
ies <br>int freq_step =3D 10e6; // frequency step size <br>double start =3D=
 usrp-&gt;get_time_now().get_real_secs(); <br><br>for(int i =3D 0; i &lt; c=
ount; i++) {<br>uhd::tune_request_t tune_request(600e6 + i*freq_step);<br>/=
/ tuning
  usrp-&gt;set_rx_freq(tune_request, 0);
  usrp-&gt;set_tx_freq(tune_request, 0);

 // receive samples
 stream_cmd.time_spec  =3D usrp-&gt;get_time_now() + uhd::time_spec_t(0.01)=
;
 rx_stream-&gt;issue_stream_cmd(stream_cmd);
 size_t num_rx_samps =3D rx_stream-&gt;recv(buff_ptrs[i], samps_per_buff, m=
d);
<br></p><p>}</p><p>I use the usrp.get_time_now() function to timing the loo=
p. Here is what I=E2=80=99ve found: The uhd ad9361 seems to run a calibrati=
on procedure when there is a frequency jump over 100 MHz. And each calibrat=
ion takes about 2 seconds for my measurements. With my current setup (100 s=
teps and 10 MHz frequency step size), the total time of the loop is 25.6 se=
conds. There are 9 calibrations in the loop which takes 18 seconds.</p><p>M=
y goal is to find the source code that implements AD9361=E2=80=99s tuning f=
unction in the UHD source code so that I can comment out the calibration pa=
rt to speed up the frequency tuning.</p><p>The following source code files =
are related to AD9361 tuning:</p><ul><li><p>the set_tx_frequency() implemen=
ted in <code>uhd/host/lib/usrp/dboard/e3xx/e3xx_radio_control_impl.cpp</cod=
e></p></li></ul><p><br></p><p>double e3xx_radio_control_impl::set_tx_freque=
ncy(const double freq, const size_t chan) {</p><p>RFNOC_LOG_TRACE("set_tx_f=
requency(f=3D" &lt;&lt; freq &lt;&lt; ", chan=3D" &lt;&lt; chan &lt;&lt; ")=
"); std::lock_guard<a href=3D"std::mutex">std::mutex</a> l(_set_lock);</p><=
p>double clipped_freq =3D uhd::clip(freq, AD9361_TX_MIN_FREQ, AD9361_TX_MAX=
_FREQ);</p><p>double coerced_freq =3D _ad9361-&gt;tune(get_which_ad9361_cha=
in(TX_DIRECTION, chan, _fe_swap), clipped_freq); <br>// The E3xx devices ha=
ve one LO for TX, if we change one channel's frequency, we change the other=
, too </p><p>for (size_t chan_idx =3D 0; chan_idx &lt; E3XX_NUM_CHANS; ++ch=
an_idx) { radio_control_impl::set_tx_frequency(coerced_freq, chan_idx); }</=
p><p>// Front-end switching <br>_set_atr_bits(chan);</p><p>return coerced_f=
req;</p><p>}</p><ul><li><p>the tune method in line 227 in the above figure =
calls the tune() function in: <code>uhd/host/lib/usrp/dboard/e3xx/e3xx_ad93=
61_iface.cpp</code></p><p><br></p></li></ul><p>double tune(const std::strin=
g&amp; which, const double value) override {</p><pre><code>// return _rpcc-=
&gt;request_with_token&lt;double&gt;(
//     E3XX_TUNE_TIMEOUT, this-&gt;_rpc_prefix + "catalina_tune", which, va=
lue);

    return _rpcc-&gt;request_with_token&lt;double&gt;(
    E3XX_TUNE_TIMEOUT, this-&gt;_rpc_prefix + "tune", which, value);</code>=
</pre><p>}</p><p>Notice that the original source code is =E2=80=9Ccatalina_=
tune=E2=80=9D and I changed it to =E2=80=9Ctune=E2=80=9D because my experim=
ents showed =E2=80=9Ctune=E2=80=9D is much faster than =E2=80=9Ccatalina_tu=
ne=E2=80=9D.</p><ul><li><p>Finally, I find the tune() function above seems =
to call the tune() function in: <code>uhd/host/lib/usrp/common/ad9361_drive=
r/ad9361_device.cpp</code></p><p><br></p></li></ul><p>const double ad9361_d=
evice_t::AD9361_MAX_GAIN =3D 89.75; const double ad9361_device_t::AD9361_MI=
N_CLOCK_RATE =3D 220e3; const double ad9361_device_t::AD9361_MAX_CLOCK_RATE=
 =3D 61.44e6; const double ad9361_device_t::AD9361_CAL_VALID_WINDOW =3D 100=
e6; // Max bandwdith is due to filter rolloff in analog filter stage const =
double ad9361_device_t::AD9361_MIN_BW =3D 200e3; const double ad9361_device=
_t::AD9361_MAX_BW =3D 56e6;</p><p>I find in <code>ad9361_device.cpp </code>=
that  AD9361_CAL_VALID_WINDOW is defaulted to 100 MHz and I change the 100 =
MHz to 1 GHz. But nothing seems to change, the device still do a calibratio=
n every 100 MHz.</p><p>I also comment out the calibration code in <code>uhd=
/host/lib/usrp/common/ad9361_driver/ad9361_device.cppb</code>, but still no=
thing seems to be changed. The device is still doing calibration every 100 =
MHz.</p><p>Anyone knows where the source code for tuning ad9361 with E312 d=
evice is ? I wish I can locate the tuning source code so that I can change =
it to speed up frequency tuning. In my application, if I can turn off the c=
alibration that happens every 100MHz, then the total tuning time is only 8 =
seconds, which is just what I need. But I can not locate the true tuning so=
urce code.</p><p>Thanks,</p><p>Yan</p>

--b1_Ucv51sd8QfcKkwEWXkz1gmGCKW5NFL2jNHR7ErW504--

--===============1897772375317153009==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1897772375317153009==--
