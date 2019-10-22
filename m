Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6821DE049C
	for <lists+usrp-users@lfdr.de>; Tue, 22 Oct 2019 15:11:32 +0200 (CEST)
Received: from [::1] (port=38420 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iMtwe-0005eA-KT; Tue, 22 Oct 2019 09:11:28 -0400
Received: from mail-oi1-f172.google.com ([209.85.167.172]:36698)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <alexander.e.wagner@gmail.com>)
 id 1iMtwb-0005SB-6B
 for usrp-users@lists.ettus.com; Tue, 22 Oct 2019 09:11:25 -0400
Received: by mail-oi1-f172.google.com with SMTP id k20so14094529oih.3
 for <usrp-users@lists.ettus.com>; Tue, 22 Oct 2019 06:11:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=Trhrt+3/6V7+RUNxVNPYY3lBuHYItHMTn36zyZ76P00=;
 b=jntTeGsC2X+Ax5TmiYYWOx20VGEXwehxqCzhBBWjBUxurNh/KQuKKuDNyDhWGxTK6M
 NpwTbtf5Ba3xG0r1WOk/PB1pLZPj9sNwIil9KyTuWshoKnTF/AFTJsGf/ATL9t9x5BLe
 hsxvetLGr5jy3QkbZMLyz1LfUW8R6wyOQUkyNHOsRh7WA6nC6XlJhK6LX0ofL2A7Nn/z
 IZnMXmkpsGQvejq299fLLqujxVh1o6nZ0SOzdkeb5WA461JlUIhx4KbZpRKzzwFbtHwI
 GhURK7nHeK73UyPbaemX9vlGgQ9q2+1OGOcrkdmile/fTCkSP5DegmV2e0k6L6ZEohcB
 7hCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=Trhrt+3/6V7+RUNxVNPYY3lBuHYItHMTn36zyZ76P00=;
 b=OfZQbmFyJhXqbGilsY6wGYgKrVwuMpaFVHjjC1FiaaJ+DYx7oGP9mg9+K+BYBJirTb
 wCn39BdPA1VteHi1mvOu8GZbi0j58F9CSIyegtDYhnTnWq9E67IXR2zs76d0EW+FkLy2
 mhuOhHq7gVEnpGZBNrH1v7QXSazwEjhuHC66EDwiFC+tRjBNyd5PbZix3tEzo25i+zXN
 bcpalX9EKU3wdEDVIIUVmWrK4gCcYSuyMHxtfzpVAty69yrM0J1zTVnskK5eBW1XSB6O
 jF1RrkBLP0cnKbnNpnCysNQdxfbPNpFdOo1MjoqGjYcG4LFUvEcX0otcUxd2mQs6LnNP
 sktw==
X-Gm-Message-State: APjAAAVparLtsVADQd7xA1INPXG+WwCp/sU1TNyZWWlcyCMEhEDXXDcO
 3ZB+wBzR5V4lyZrZI1rVlyOI1r5VL66wkbp+RK15hwt8
X-Google-Smtp-Source: APXvYqzS0n6VW8SDX8QSdPKFaFr5UbdMWk3FdbG74ninoOUW/GnnOU3GFnYscibaQkB3ajkAUqUpXEKpqk1pRb1/mxI=
X-Received: by 2002:aca:230c:: with SMTP id e12mr2682651oie.153.1571749844183; 
 Tue, 22 Oct 2019 06:10:44 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 22 Oct 2019 15:10:33 +0200
Message-ID: <CAFG_7kdRki3HVcyVTi=k63=A01Y6RVqBRU_9it6PYb=JkPUBww@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] [usrp-users] E320 Multi TX Stream Operation in GR 3.8
 stops during configuration of the USRP sink
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
From: Alexander W via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Alexander W <alexander.e.wagner@gmail.com>
Content-Type: multipart/mixed; boundary="===============3779695268047788065=="
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

--===============3779695268047788065==
Content-Type: multipart/alternative; boundary="000000000000236e8605957f8750"

--000000000000236e8605957f8750
Content-Type: text/plain; charset="UTF-8"

Hey,

I am currently setting up an E320 and want to use both TX Chains
simultaneously. I first did the benchmark_rate test:

$ ~/pybombs_gnuradio/lib/uhd/examples/benchmark_rate    --args
"addr=192.168.10.2"    --duration 60    --channels "0,1"    --rx_rate 1e6
 --rx_subdev "A:0 A:1"

This ran fine and I moved over to gnuradio. The test flowchart consists of
two sine signal sources as input for one sink block. Arguments in the USRP
sink block are set to the following:

- Device Address: addr=192.168.10.2
- Mb0: SubDev Spec: A:0 A:1
- Num Channels: 2

Rest of the arguments are the default values. Starting the flowchart
returns:
...
[INFO] [0/Radio_0] Performing CODEC loopback test...
[INFO] [0/Radio_0] CODEC loopback test passed
[INFO] [0/Radio_0] Performing CODEC loopback test...
[INFO] [0/Radio_0] CODEC loopback test passed

>>> Done (return code -11)

I tried to see where this comes from. The segfault is triggered after a
call to set the center frequency of the second channel:
...
        self.uhd_usrp_sink_0 = uhd.usrp_sink(
            ",".join(('addr=192.168.10.2', "")),
            uhd.stream_args(
                cpu_format="fc32",
                args='',
                channels=[],
            ),
            '',
        )
        self.uhd_usrp_sink_0.set_subdev_spec('A:0 A:1', 0)
        self.uhd_usrp_sink_0.set_center_freq(freq, 0)
        self.uhd_usrp_sink_0.set_normalized_gain(0.5, 0)
        print("91")
        self.uhd_usrp_sink_0.set_antenna('TX/RX', 0)
        print("93")
        self.uhd_usrp_sink_0.set_center_freq(freq, 1)
<-- Segfault appears in this call
        print("95")
        self.uhd_usrp_sink_0.set_normalized_gain(0.5, 1)
        print("97")
        self.uhd_usrp_sink_0.set_antenna('TX/RX', 1)
        self.uhd_usrp_sink_0.set_samp_rate(samp_rate)
...

Used UHD Version: UHD 3.14.1.1-0-g0347a6d8
Used GR Version: 3.8.0.0

Did anyone run into the same issue? As the error code is during the config
call I am not sure if this connected to a wrong config or something else.

Thanks in advance. Regards,
Alex

--000000000000236e8605957f8750
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hey,</div><div><br></div><div>I am c=
urrently setting up an E320 and want to use both TX Chains simultaneously. =
I first did the benchmark_rate test:<br></div><div> <br></div><div>$ ~/pybo=
mbs_gnuradio/lib/uhd/examples/benchmark_rate
 =C2=A0 =C2=A0--args &quot;addr=3D192.168.10.2&quot; =C2=A0 =C2=A0--duratio=
n 60 =C2=A0 =C2=A0--channels &quot;0,1&quot; =C2=A0=20
=C2=A0--rx_rate 1e6 =C2=A0 =C2=A0--rx_subdev &quot;A:0 A:1&quot;</div><div>=
<br></div><div>This=20
ran fine and I moved over to gnuradio. The test flowchart consists of=20
two sine signal sources as input for one sink block. Arguments in the=20
USRP sink block are set to the following:</div><div><br></div><div>- Device=
 Address: addr=3D192.168.10.2</div><div>- Mb0: SubDev Spec: A:0 A:1</div><d=
iv>- Num Channels: 2</div><div><br></div><div>Rest of the arguments are the=
 default values. Starting the flowchart returns: <br></div><div>...<br></di=
v><div> [INFO] [0/Radio_0] Performing CODEC loopback test... <br>[INFO] [0/=
Radio_0] CODEC loopback test passed<br>[INFO] [0/Radio_0] Performing CODEC =
loopback test... <br>[INFO] [0/Radio_0] CODEC loopback test passed<br><br>&=
gt;&gt;&gt; Done (return code -11)</div><div><br></div><div>I tried to see =
where this comes from. The segfault is triggered after a call to set the ce=
nter frequency of the second channel:</div><div>...</div><div>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.uhd_usrp_sink_0 =3D uhd.usrp_sink(<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;,&quot;.join((&#39;addr=3D1=
92.168.10.2&#39;, &quot;&quot;)),<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 uhd.stream_args(<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 cpu_format=3D&quot;fc32&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 args=3D&#39;&#39;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 channels=3D[],<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 ),<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;&#39;,<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 )<br></div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 sel=
f.uhd_usrp_sink_0.set_subdev_spec(&#39;A:0 A:1&#39;, 0)<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_center_freq(freq, 0)<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_normalized_gain(0.5, 0)<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;91&quot;)<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 self.uhd_usrp_sink_0.set_antenna(&#39;TX/RX&#39;, 0)<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 print(&quot;93&quot;)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd=
_usrp_sink_0.set_center_freq(freq, 1)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 &lt;-- Segfault appears in this call<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 pri=
nt(&quot;95&quot;)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_=
normalized_gain(0.5, 1)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;97&quot;=
)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_antenna(&#39;TX/R=
X&#39;, 1)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_samp_rat=
e(samp_rate)</div><div>...<br></div><div>=C2=A0<br></div><div>Used UHD Vers=
ion: UHD 3.14.1.1-0-g0347a6d8</div><div>Used GR Version: 3.8.0.0</div><div>=
<br></div><div>Did
 anyone run into the same issue? As the error code is during the config=20
call I am not sure if this connected to a wrong config or something=20
else. <br></div><div><br></div><div>Thanks in advance. Regards,</div><div>A=
lex</div></div></div>

--000000000000236e8605957f8750--


--===============3779695268047788065==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3779695268047788065==--

