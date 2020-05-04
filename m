Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC161C4A72
	for <lists+usrp-users@lfdr.de>; Tue,  5 May 2020 01:38:26 +0200 (CEST)
Received: from [::1] (port=60686 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jVkfF-00079q-Kd; Mon, 04 May 2020 19:38:21 -0400
Received: from mail-il1-f178.google.com ([209.85.166.178]:37285)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <adray0001@gmail.com>) id 1jVkfB-00073w-FK
 for usrp-users@lists.ettus.com; Mon, 04 May 2020 19:38:17 -0400
Received: by mail-il1-f178.google.com with SMTP id n11so218205ilj.4
 for <usrp-users@lists.ettus.com>; Mon, 04 May 2020 16:37:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DexOYzhACTsgYbLDCd7cPmQjYwXKCA9CTHtahTaCcPI=;
 b=pqQm3y4DD7soTv73vpVh4sWIUe2dg1GJ8PtWAwBw+Kh+7oHGR93pB0fskJfRP1o+EA
 mLWk7tmEt8S+fESwjeoJuxs4ZyCEIGJSCM/5/N8ezf6H8W/faTttpCVWt3qIBXBDJgNq
 JmTE38i6cL4F92A6nd00V6iwLAq9pVcXZPToeMV84SsZPPo9wm8wWTDoN18e6vFp4qYV
 d/gVRjknsmHQLRHuBMqS07ENnfOrTf5k3b2Gs8ygvDh8VlwDL3pJiXNqXUreas7MQQ6g
 r4H64pLONEB3tVWOoeU1Hfv+IDkHSlSDRTBr/F7+cnC69e4ZbAxymqIcxdTLuTX1RE9n
 CJYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DexOYzhACTsgYbLDCd7cPmQjYwXKCA9CTHtahTaCcPI=;
 b=c71CJ8rQ8n8MJu2T+Zam9Lz/txeHmv5wCy7XtRyQ7ilWxzSVeEYnk8uPo/PfQdyJy6
 htlXFNEjHIgREEyS6B3VNnTfv/pk3ns+9ZAgH5Au9yjgQAenNRaGfrCjy06vjaLrKjih
 AeElFSBf6iwCzJqfFmsTfozk5HKPN3jSYkZhtRyBcx/2gqg/9Ur7iYTqS3pJdES02NE5
 wOrRZGsaW4nraAnaNkCdYYw6fOW/bEccyYiNJdU8bGGmJzsoZh8T7BEKqvp5yEkkEoz6
 uKlv63G1stwUkeFSsq07ySn28sZwYVbxQSjc7U29/dwf6qCso6+ouNn/vw69vz8Bkpwh
 Tp7g==
X-Gm-Message-State: AGi0PuZIMF2D72lw5Wng0sBwx3E03lX7W4yt04njLKf1aj3UPxanvMnM
 mf+r1bH2Cp9WT8YxepLGpoaa3iw45qehiIwOjq0=
X-Google-Smtp-Source: APiQypKhTjGfxl52kdS9JDGX1K3qzTZ7zsojFjTZU0HUrvy/2JYAgFf0Xg7yHEHWF2c3MM8StiD/nkLgv7p+1Y9enTw=
X-Received: by 2002:a92:c794:: with SMTP id c20mr927206ilk.273.1588635456730; 
 Mon, 04 May 2020 16:37:36 -0700 (PDT)
MIME-Version: 1.0
References: <CAPRRyxtCj6iQymGZ9zNbGWxBjybOC=6GN7=OzpA2HvkiiYTbzg@mail.gmail.com>
 <CAB__hTQt5Yaw3xYKAiw+eRRH62g_s=tDVMgQtwNcng_jW7EnSw@mail.gmail.com>
 <CAFOi1A57F7PnKWoCcrPuh=G643TADN3_0xxHTTXNuLb2HiJLOQ@mail.gmail.com>
In-Reply-To: <CAFOi1A57F7PnKWoCcrPuh=G643TADN3_0xxHTTXNuLb2HiJLOQ@mail.gmail.com>
Date: Tue, 5 May 2020 02:37:25 +0300
Message-ID: <CAPRRyxtdJyzJJdmttiSSNFgCEKbZb+dR4+ay0=U+-8GmzyCVXw@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Subject: Re: [USRP-users] How to set channel B reception with rfnoc USRP
 E310?
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
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
Cc: usrp-users <usrp-users@lists.ettus.com>,
 discuss-gnuradio <discuss-gnuradio@gnu.org>
Content-Type: multipart/mixed; boundary="===============9123247278954041010=="
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

--===============9123247278954041010==
Content-Type: multipart/alternative; boundary="000000000000137c6005a4db040d"

--000000000000137c6005a4db040d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

As I understand it, you mean the Radio select parameter in the RFNoC Radio
block. When setting the parameter to "B", an error is issued: Traceback
(most recent call last):   File "rfnoc_fosphor_network_usrp.py", line 259,
in <module>     main ()   File "rfnoc_fosphor_network_usrp.py", line 248,
in main     tb =3D top_block_cls (fft_size =3D options.fft_size, freq =3D
options.freq, gain =3D options.gain, host_ip_addr =3D options.host_ip_addr,
param =3D options.param, samp_rate =3D options.samp_rate, tdecay =3D
options.tdecay, trise =3D options. trise)   File
"rfnoc_fosphor_network_usrp.py", line 71, in __init__     eleven   File
"/usr/lib/python2.7/site-packages/ettus/ettus_swig.py", line 2431, in make
    return _ettus_swig.rfnoc_radio_make (dev, tx_stream_args,
rx_stream_args, radio_select, device_select) RuntimeError: Cannot find a
block for ID: Radio_1

=D0=B2=D1=82, 5 =D0=BC=D0=B0=D1=8F 2020 =D0=B3. =D0=B2 01:47, Martin Braun =
via USRP-users <
usrp-users@lists.ettus.com>:

> It does; the channel parameter on E310 is used to address the A- or B-sid=
e.
>
> On Mon, May 4, 2020 at 1:39 PM Rob Kossler <rkossler@nd.edu> wrote:
>
>> Does the 2nd argument to set_rx_antenna() indicate which radio port?  If
>> so, try setting it to 1.
>> Rob
>>
>> On Mon, May 4, 2020 at 2:02 PM Ivan Zahartchuk via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hello, I'm trying to switch between all four USRP E310 inputs. For this=
,
>>> I use the command self.uhd_rfnoc_streamer_radio_0.set_rx_antenna ("TX /
>>> RX", 0) but I can only switch in channel A. RFNoC Radio does not have t=
he
>>> set_rx_subdev_spec command. Tell me how can I switch across all 4 chann=
els?
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000137c6005a4db040d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">As I understand it, you mean the Radio select parameter in=
 the RFNoC Radio block. When setting the parameter to &quot;B&quot;, an err=
or is issued: Traceback (most recent call last):
=C2=A0=C2=A0File &quot;rfnoc_fosphor_network_usrp.py&quot;, line 259, in &l=
t;module&gt;
=C2=A0=C2=A0=C2=A0=C2=A0main ()
=C2=A0=C2=A0File &quot;rfnoc_fosphor_network_usrp.py&quot;, line 248, in ma=
in
=C2=A0=C2=A0=C2=A0=C2=A0tb =3D top_block_cls (fft_size =3D options.fft_size=
, freq =3D options.freq, gain =3D options.gain, host_ip_addr =3D options.ho=
st_ip_addr, param =3D options.param, samp_rate =3D options.samp_rate, tdeca=
y =3D options.tdecay, trise =3D options. trise)
=C2=A0=C2=A0File &quot;rfnoc_fosphor_network_usrp.py&quot;, line 71, in __i=
nit__
=C2=A0=C2=A0=C2=A0=C2=A0eleven
=C2=A0=C2=A0File &quot;/usr/lib/python2.7/site-packages/ettus/ettus_swig.py=
&quot;, line 2431, in make
=C2=A0=C2=A0=C2=A0=C2=A0return _ettus_swig.rfnoc_radio_make (dev, tx_stream=
_args, rx_stream_args, radio_select, device_select)
RuntimeError: Cannot find a block for ID: Radio_1<br></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=D0=B2=D1=82, 5 =D0=
=BC=D0=B0=D1=8F 2020 =D0=B3. =D0=B2 01:47, Martin Braun via USRP-users &lt;=
<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a=
>&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">It does; the channel parameter on E310 is used to address the A- o=
r B-side.<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Mon, May 4, 2020 at 1:39 PM Rob Kossler &lt;<a href=3D"mail=
to:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Does =
the 2nd argument to set_rx_antenna() indicate which radio port?=C2=A0 If so=
, try setting it to 1.<div>Rob</div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Mon, May 4, 2020 at 2:02 PM Ivan Zah=
artchuk via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hello, I&#39;m t=
rying to switch between all four USRP E310 inputs. For this, I use the comm=
and self.uhd_rfnoc_streamer_radio_0.set_rx_antenna (&quot;TX / RX&quot;, 0)=
 but I can only switch in channel A. RFNoC Radio does not have the set_rx_s=
ubdev_spec command. Tell me how can I switch across all 4 channels?</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000137c6005a4db040d--


--===============9123247278954041010==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9123247278954041010==--

