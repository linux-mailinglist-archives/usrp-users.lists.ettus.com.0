Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF0D5AD4AE
	for <lists+usrp-users@lfdr.de>; Mon,  5 Sep 2022 16:23:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 74552380D07
	for <lists+usrp-users@lfdr.de>; Mon,  5 Sep 2022 10:23:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662387802; bh=y5sl6P2tIaO7YuIMGjRdGBhmt5t97OVq8DQjsVzOeKY=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=kVBjW+89COwlZaufZ7MOE+jrNd6o6NJQC1TQhAURbtQk4Z3wlh4fmk4t6UtnrGf6H
	 1OGXHAss8v70NqRR+fPxjANJ0oNNFk9ZHJo4andn+oyeqTEQPntv1Sub6+tmS2chge
	 p7KQ6F8VUxktJINnT6C4yzCEuXjdxFRiBvlr9Pb9eDtGBM1+SiP/GoR17n6iF7C5FI
	 5QdQct+WXnFisS5VkUzPT+C1YlclvIjyZYMf/DdEo81/GYPwV8M32BwD9C93kC/hXK
	 oOQZukN/RGK6Hhc5nAPS+rmmMOjtuC3GgFQ4hmRejZZ+5Rod/is9Dih6HHXzz2t1g1
	 GLAWLL2HDXrxw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4A410380D07
	for <usrp-users@lists.ettus.com>; Mon,  5 Sep 2022 10:22:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662387751; bh=hB2yrSDxp/0ksD89cCkOr2gTBMrVjw00ZRG/dIqPQJ4=;
	h=Date:To:From:Subject:From;
	b=MHt5/ZjC48YAK304Gljy72EO1J9GKKyGzlVraqwKXf/AoAf/KwAS1UudVyJydercf
	 vZ5y5p7XtvO0scCbmYxkNxrw3aVxoz9liKp5I4RT0n2+I1ukCYPc1AkJ3+kUc4MCiH
	 vkg46g73yFxcwZ9KZm3wrCLbyfKpkLroqsRBr93fEdkmrTyIqWgRl+POEz8wkGx4Co
	 uC8JrCjUzyU3uJo6F4kVMk4WLxTGhLMCivVZD+FgzRl/3WUOdPibbNvMm94erdx3x6
	 ZArbC0FGWLzstOzmRy9mRGRWtZI+2HlKX4fCrcKbLeFBqg4ve9nP2QWsHFxdPi2MAH
	 qr0NQ5r8pud/A==
Date: Mon, 5 Sep 2022 14:22:31 +0000
To: usrp-users@lists.ettus.com
From: yanzhanggc@gmail.com
Message-ID: <JobET88vs9cekSRCdJp2IJ4WZb0MOWvOyQ8qU09zA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: H7Y3DRX2ZNJSNGG4BAGFSURSEDG254Y6
X-Message-ID-Hash: H7Y3DRX2ZNJSNGG4BAGFSURSEDG254Y6
X-MailFrom: yanzhanggc@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E312 ad9361 tuning() source code
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/H7Y3DRX2ZNJSNGG4BAGFSURSEDG254Y6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7430207492351598454=="

This is a multi-part message in MIME format.

--===============7430207492351598454==
Content-Type: multipart/alternative;
 boundary="b1_JobET88vs9cekSRCdJp2IJ4WZb0MOWvOyQ8qU09zA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_JobET88vs9cekSRCdJp2IJ4WZb0MOWvOyQ8qU09zA
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

1. the transmit thread: just sending a same baseband signal continuously

   void transmit_worker (std::vector<std::complex<float>> buff, \
   uhd::tx_streamer::sptr tx_streamer, \
   uhd::tx_metadata_t metadata, \
   int num_channels) \
   {=20

   std::vector<std::complex<float>\*> buffs(num_channels, &buff.front());

   ```
   // send data until the signal handler gets called
   while (not stop_signal_called) {
  =20
       // send the entire contents of the buffer
       tx_streamer->send(buffs, buff.size(), metadata);
  =20
       metadata.start_of_burst =3D false;
       metadata.has_time_spec  =3D false;
   }
  =20
   // send a mini EOB packet
   metadata.end_of_burst =3D true;
   tx_streamer->send("", 0, metadata);
   ```

   }

2. the loop handling the tuning and receiving:

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

* the tune method in line 227 in the above figure calls the tune() functi=
on in: `uhd/host/lib/usrp/dboard/e3xx/e3xx_ad9361_iface.cpp`

**Notice that the original source code is =E2=80=9Ccatalina_tune=E2=80=9D=
 and I changed it to =E2=80=9Ctune=E2=80=9D because my experiments showed=
 =E2=80=9Ctune=E2=80=9D is much faster than =E2=80=9Ccatalina_tune=E2=80=9D=
.**

* Finally, I find the tune() function above seems to call the tune() func=
tion in: `uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp`

I find in line 85 AD9361_CAL_VALID_WINDOW is defaulted to 100 MHz and I c=
hange the 100 MHz to 1 GHz. But nothing seems to change, the device still=
 do a calibration every 100 MHz.

I also comment out the calibration code in `uhd/host/lib/usrp/common/ad93=
61_driver/ad9361_device.cppb`, but still nothing seems to be changed. The=
 device is still doing calibration every 100 MHz.

**Anyone knows where the source code for tuning ad9361 with E312 device i=
s ? I wish I can locate the tuning source code so that I can change it to=
 speed up frequency tuning.** In my application, if I can turn off the ca=
libration that happens every 100MHz, then the total tuning time is only 8=
 seconds, which is just what I need. But I can not locate the true tuning=
 source code.

Thanks,

Yan

--b1_JobET88vs9cekSRCdJp2IJ4WZb0MOWvOyQ8qU09zA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi, all,</p><p>I am having a USRP E312 and is working on implementing a =
stepped frequency radar application. The bandwidth of the radar is 1 GHz an=
d the frequency step size is 10 MHz. My current implementation is similar t=
o the example code =E2=80=9Ctxrx_loopback_to_file.cpp=E2=80=9D : a transmit=
 thread sending a same baseband signal at the background; a loop handling t=
he tuning center frequency and receiving data to a buffer.</p><p>The follow=
ing shows the code snippets.</p><ol><li><p>the transmit thread: just sendin=
g a same baseband signal continuously</p><p>void transmit_worker (std::vect=
or&lt;std::complex&lt;float&gt;&gt; buff, <br>uhd::tx_streamer::sptr tx_str=
eamer, <br>uhd::tx_metadata_t metadata, <br>int num_channels) <br>{ </p><p>=
std::vector&lt;std::complex&lt;float&gt;*&gt; buffs(num_channels, &amp;buff=
.front());</p><pre><code>// send data until the signal handler gets called
while (not stop_signal_called) {

    // send the entire contents of the buffer
    tx_streamer-&gt;send(buffs, buff.size(), metadata);

    metadata.start_of_burst =3D false;
    metadata.has_time_spec  =3D false;
}

// send a mini EOB packet
metadata.end_of_burst =3D true;
tx_streamer-&gt;send("", 0, metadata);</code></pre><p>}</p></li><li><p>the =
loop handling the tuning and receiving:</p><p><br></p></li></ol><p>I use th=
e usrp.get_time_now() function to timing the loop. Here is what I=E2=80=
=99ve found: The uhd ad9361 seems to run a calibration procedure when there=
 is a frequency jump over 100 MHz. And each calibration takes about 2 secon=
ds for my measurements. With my current setup (100 steps and 10 MHz frequen=
cy step size), the total time of the loop is 25.6 seconds. There are 9 cali=
brations in the loop which takes 18 seconds.</p><p>My goal is to find the s=
ource code that implements AD9361=E2=80=99s tuning function in the UHD sour=
ce code so that I can comment out the calibration part to speed up the freq=
uency tuning.</p><p>The following source code files are related to AD9361 t=
uning:</p><ul><li><p>the set_tx_frequency() implemented in <code>uhd/host/l=
ib/usrp/dboard/e3xx/e3xx_radio_control_impl.cpp</code></p></li></ul><p><br>=
</p><ul><li><p>the tune method in line 227 in the above figure calls the tu=
ne() function in: <code>uhd/host/lib/usrp/dboard/e3xx/e3xx_ad9361_iface.cpp=
</code></p><p><br></p></li></ul><p><strong>Notice that the original source =
code is =E2=80=9Ccatalina_tune=E2=80=9D and I changed it to =E2=80=9Ctune=
=E2=80=9D because my experiments showed =E2=80=9Ctune=E2=80=9D is much fast=
er than =E2=80=9Ccatalina_tune=E2=80=9D.</strong></p><ul><li><p>Finally, I =
find the tune() function above seems to call the tune() function in: <code>=
uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp</code></p><p><br><=
/p></li></ul><p>I find in line 85 AD9361_CAL_VALID_WINDOW is defaulted to 1=
00 MHz and I change the 100 MHz to 1 GHz. But nothing seems to change, the =
device still do a calibration every 100 MHz.</p><p>I also comment out the c=
alibration code in <code>uhd/host/lib/usrp/common/ad9361_driver/ad9361_devi=
ce.cppb</code>, but still nothing seems to be changed. The device is still =
doing calibration every 100 MHz.</p><p><strong>Anyone knows where the sourc=
e code for tuning ad9361 with E312 device is ? I wish I can locate the tuni=
ng source code so that I can change it to speed up frequency tuning.</stron=
g> In my application, if I can turn off the calibration that happens every =
100MHz, then the total tuning time is only 8 seconds, which is just what I =
need. But I can not locate the true tuning source code.</p><p>Thanks,</p><p=
>Yan</p>

--b1_JobET88vs9cekSRCdJp2IJ4WZb0MOWvOyQ8qU09zA--

--===============7430207492351598454==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7430207492351598454==--
