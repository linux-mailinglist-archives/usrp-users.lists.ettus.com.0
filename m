Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A17D35F25
	for <lists+usrp-users@lfdr.de>; Wed,  5 Jun 2019 16:25:02 +0200 (CEST)
Received: from [::1] (port=41610 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hYWqX-0001Fr-Ta; Wed, 05 Jun 2019 10:24:57 -0400
Received: from mail-vs1-f44.google.com ([209.85.217.44]:36392)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <snehabvasan@gmail.com>)
 id 1hYWqU-0001An-I3
 for usrp-users@lists.ettus.com; Wed, 05 Jun 2019 10:24:54 -0400
Received: by mail-vs1-f44.google.com with SMTP id l20so15819869vsp.3
 for <usrp-users@lists.ettus.com>; Wed, 05 Jun 2019 07:24:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=AfAnFML4MFhI/oX2LKXbSCacy0RlbkFAj8r8OnDLr+0=;
 b=QOjwV4BmltpaqU2GRYuLPTf3LBzKPps0KtKw+Wb5oHFqCW8NkGIHGfps0pMeFt3Jrc
 WGsJ/zIREF6gxJ5mL4z3N4lUukNeewVB5DvQDElxhl2OwBjL1TdbTlLTKgtbwYasq/5t
 JDbQ6YIqIl37kwhkuif/mKdCc7O1PZHLnCpWKAFGq1lulR6+fEIvc2SDbWIeURAmEwj+
 q4cuSOKnplGojzLjzQZk3rIRN5MgPKpGHM8XQgXg7R3dS+4nUqIRIVxXfiVOKcTxZSZx
 huuaRMwZ4hbJnVdt5ll5ypsmweWRvZOWCafGvaL7SfPZRdWqg45fn5D15dkaeiPkZTGm
 0JPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=AfAnFML4MFhI/oX2LKXbSCacy0RlbkFAj8r8OnDLr+0=;
 b=Gk/XNdvKVKHTUjOo4FaPfnsVeidalns9KOwDdl5fQUH8WHkayb9YPrDreUAM+r607t
 S47HgSbnbQOKIAX3l5d2qHVFEqsOyr+CXb2YsYSRA85MvYo0din5R4TjAx9XLA8P2z1W
 BKgqtaz/cpeCFBaGU3johznyrYepWjkrAVyNcdf2nvQ1VFrhjBqEJrNrgwemat2hSlOS
 TgML5av2Pa60oVGkivv8gpnQ0oJriJPH8IwkKxENCvs19pBkqeUZE27GcLK5nXjDOxNz
 aV7gCTDWRdMqkhGXXfq6HSnoDqdOeHGU/J2TCt2AFT+N9/er/TMoyId95Dy/I9KOYEvi
 nzQA==
X-Gm-Message-State: APjAAAXIa1HofUrZiQTkOJbliRNn1m084/gWrXMnkOL9FYvLd/ZgCtJd
 RY6/coyg/TmKnaDmiX2HDfWJAhpxhwMpCMhb+pKpnqH5
X-Google-Smtp-Source: APXvYqwCcfU/ouNHgnHNwVT2y5aav6Tv0GOTcWKsU8oDMuCaeFZxxH9L6RzUCSU/cjC1c7SWM9bH8BDw9OSl2HblpDw=
X-Received: by 2002:a67:edc8:: with SMTP id e8mr17574132vsp.227.1559744653630; 
 Wed, 05 Jun 2019 07:24:13 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 5 Jun 2019 16:24:02 +0200
Message-ID: <CAPLnO-LAEmXQJdoAGjN4vfEbzjY7gf4qkP5=vH=X6U=SFzrhbQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Filter Error
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
From: Sneha vasan via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sneha vasan <snehabvasan@gmail.com>
Content-Type: multipart/mixed; boundary="===============6409807038686168813=="
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

--===============6409807038686168813==
Content-Type: multipart/alternative; boundary="000000000000052291058a945a61"

--000000000000052291058a945a61
Content-Type: text/plain; charset="UTF-8"

Hi everyone,

Can anybody guide me on this???.. I am using x310 with sampling rate of
1MHz.

Traceback (most recent call last):
  File "/home/sneha/My_waveform/past work/transmit.py", line 414, in
<module>
    main()
  File "/home/sneha/My_waveform/past work/transmit.py", line 402, in main
    tb = top_block_cls()
  File "/home/sneha/My_waveform/past work/transmit.py", line 250, in
__init__
    callback=lambda ok, payload: self.digital_ofdm_demod_0.recv_pkt(ok,
payload),
  File "/usr/local/lib/python2.7/dist-packages/gnuradio/digital/ofdm.py",
line 223, in __init__
    options.log)
  File
"/usr/local/lib/python2.7/dist-packages/gnuradio/digital/ofdm_receiver.py",
line 78, in __init__
    filter.firdes.WIN_HAMMING)   # filter type
  File
"/usr/local/lib/python2.7/dist-packages/gnuradio/filter/filter_swig.py",
line 143, in low_pass
    return _filter_swig.firdes_low_pass(*args, **kwargs)
RuntimeError: firdes check failed: 0 < fa <= sampling_freq / 2


Regards,
sneha

--000000000000052291058a945a61
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi everyone,</div><div><br></div><div>Can anybody gui=
de me on this???.. I am using x310 with sampling rate of 1MHz. <br></div><d=
iv><br></div><div>Traceback (most recent call last):</div>=C2=A0 File &quot=
;/home/sneha/My_waveform/past work/transmit.py&quot;, line 414, in &lt;modu=
le&gt;<br>=C2=A0 =C2=A0 main()<br>=C2=A0 File &quot;/home/sneha/My_waveform=
/past work/transmit.py&quot;, line 402, in main<br>=C2=A0 =C2=A0 tb =3D top=
_block_cls()<br>=C2=A0 File &quot;/home/sneha/My_waveform/past work/transmi=
t.py&quot;, line 250, in __init__<br>=C2=A0 =C2=A0 callback=3Dlambda ok, pa=
yload: self.digital_ofdm_demod_0.recv_pkt(ok, payload),<br>=C2=A0 File &quo=
t;/usr/local/lib/python2.7/dist-packages/gnuradio/digital/ofdm.py&quot;, li=
ne 223, in __init__<br>=C2=A0 =C2=A0 options.log)<br>=C2=A0 File &quot;/usr=
/local/lib/python2.7/dist-packages/gnuradio/digital/ofdm_receiver.py&quot;,=
 line 78, in __init__<br>=C2=A0 =C2=A0 filter.firdes.WIN_HAMMING) =C2=A0 # =
filter type<br>=C2=A0 File &quot;/usr/local/lib/python2.7/dist-packages/gnu=
radio/filter/filter_swig.py&quot;, line 143, in low_pass<br>=C2=A0 =C2=A0 r=
eturn _filter_swig.firdes_low_pass(*args, **kwargs)<br><div>RuntimeError: f=
irdes check failed: 0 &lt; fa &lt;=3D sampling_freq / 2</div><div><br></div=
><div><br></div><div>Regards,</div><div>sneha<br></div><br></div>

--000000000000052291058a945a61--


--===============6409807038686168813==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6409807038686168813==--

