Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3D036129
	for <lists+usrp-users@lfdr.de>; Wed,  5 Jun 2019 18:24:41 +0200 (CEST)
Received: from [::1] (port=33240 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hYYiO-0003zz-4Q; Wed, 05 Jun 2019 12:24:40 -0400
Received: from mail-lj1-f182.google.com ([209.85.208.182]:34899)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <leoechevarria@gmail.com>)
 id 1hYYiJ-0003s1-GL
 for usrp-users@lists.ettus.com; Wed, 05 Jun 2019 12:24:35 -0400
Received: by mail-lj1-f182.google.com with SMTP id h11so23752308ljb.2
 for <usrp-users@lists.ettus.com>; Wed, 05 Jun 2019 09:24:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wFvHz6GPM0qs4xwg2se/JH1/OJ7WXa1jzSxtieSXfUo=;
 b=qbpL7Sby5KWFWhBk+iz08VyrnMiCxz1F12lR3tdxxHBHfCET55rC/dx97HXvi7YXx0
 XjZXOGlnFXhf0umj+VYYtQzwPqLtXorIKbXvB2Nh9gFautNaRaHNRsw3/MaUiWqftjnS
 pPZAPRRSgsglxpRh/y+8s34zvRhVtepANJ+wYZZnfnZuL3n9y3LaNkMv3oI4LLB/eKWB
 T1aroqJDS5UC+XAehg4nBXHFbc22yz5YBFcIGjUylyJlMSqvs43RR1NNATwsJQyxqq5W
 OpKyiCZX1/+db/CE4xeq3BdGqCm1K4RU0iZcU+ZMcGvun3UBGg82PoJ5vYdij+Mqjf9h
 0Xsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wFvHz6GPM0qs4xwg2se/JH1/OJ7WXa1jzSxtieSXfUo=;
 b=fh3mjh27WOT4XmM7e08YspKnZ9LEDRJxbvOFjZJRLnFr+ladRUziQCVLdRURt1bJ0/
 FbMwNwamYX1OrLYon3xbyElCzRnUkVvzwOmRGas+jATXme6Qd1dcY9E3L9rkKroiNEcw
 8xRHTgOMFMpL/N39awaIF3qeIXtOGEHaloQHr8B6rz7DhKVbc84kwSgPwJtPUwkgxg77
 8UJGH+FMKNt8hn2aBRD19K6RUe8qXZL6ZFx6tzjIqrToWOaGeBsXBpuU7OASWR4f3o2t
 7OIFk70jMzA9ApcG2yG5Yn2VIqvzkwbuuhB10gMRxDPNFh8pPULj/W0aPsPoDx1cURLw
 CSvg==
X-Gm-Message-State: APjAAAVFQ5DOD1iSLV9phv+qybiWA0CEoLZY2Db2wQypOdfZqouy9gjZ
 Bd06f1yoZfEr5CLtsPF798MQbt0aEAxT3RkkRxE=
X-Google-Smtp-Source: APXvYqxD6C3sVehgvCx5MiJy+cA1umPmwGbKd9ulPqq9f/Lq+FTd1w3+wTkWiowNRlcuxkbmrZK4dK2/0vgJMxfkPpg=
X-Received: by 2002:a2e:96c3:: with SMTP id d3mr10021551ljj.68.1559751834015; 
 Wed, 05 Jun 2019 09:23:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAPLnO-LAEmXQJdoAGjN4vfEbzjY7gf4qkP5=vH=X6U=SFzrhbQ@mail.gmail.com>
In-Reply-To: <CAPLnO-LAEmXQJdoAGjN4vfEbzjY7gf4qkP5=vH=X6U=SFzrhbQ@mail.gmail.com>
Date: Wed, 5 Jun 2019 13:23:42 -0300
Message-ID: <CALEOA2hD1tUnt4EzOGd_s=KCxf_MDaH0-7L4_sFvqHoVpnvq1g@mail.gmail.com>
To: Sneha vasan <snehabvasan@gmail.com>
Subject: Re: [USRP-users] Filter Error
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
From: =?utf-8?q?Leandro_Echevarr=C3=ADa_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Leandro_Echevarr=C3=ADa?= <leoechevarria@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3199552607721245209=="
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

--===============3199552607721245209==
Content-Type: multipart/alternative; boundary="000000000000011dc6058a960633"

--000000000000011dc6058a960633
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

What is the "fa" frequency you're trying to configure? Given you're using 1
MHz of sampling frequency, fa cannot be greater than 500 kHz.

On Wed, Jun 5, 2019 at 11:24 AM Sneha vasan via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi everyone,
>
> Can anybody guide me on this???.. I am using x310 with sampling rate of
> 1MHz.
>
> Traceback (most recent call last):
>   File "/home/sneha/My_waveform/past work/transmit.py", line 414, in
> <module>
>     main()
>   File "/home/sneha/My_waveform/past work/transmit.py", line 402, in main
>     tb =3D top_block_cls()
>   File "/home/sneha/My_waveform/past work/transmit.py", line 250, in
> __init__
>     callback=3Dlambda ok, payload: self.digital_ofdm_demod_0.recv_pkt(ok,
> payload),
>   File "/usr/local/lib/python2.7/dist-packages/gnuradio/digital/ofdm.py",
> line 223, in __init__
>     options.log)
>   File
> "/usr/local/lib/python2.7/dist-packages/gnuradio/digital/ofdm_receiver.py=
",
> line 78, in __init__
>     filter.firdes.WIN_HAMMING)   # filter type
>   File
> "/usr/local/lib/python2.7/dist-packages/gnuradio/filter/filter_swig.py",
> line 143, in low_pass
>     return _filter_swig.firdes_low_pass(*args, **kwargs)
> RuntimeError: firdes check failed: 0 < fa <=3D sampling_freq / 2
>
>
> Regards,
> sneha
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


--=20
Leandro Echevarr=C3=ADa

--000000000000011dc6058a960633
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">What is the &quot;fa&quot; frequency you&#39;re trying to =
configure? Given you&#39;re using 1 MHz of sampling frequency, fa cannot be=
 greater than 500 kHz.=C2=A0</div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Jun 5, 2019 at 11:24 AM Sneha vasan v=
ia USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@=
lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div dir=3D"ltr"><div>Hi everyone,</div><div><br></div><div>=
Can anybody guide me on this???.. I am using x310 with sampling rate of 1MH=
z. <br></div><div><br></div><div>Traceback (most recent call last):</div>=
=C2=A0 File &quot;/home/sneha/My_waveform/past work/transmit.py&quot;, line=
 414, in &lt;module&gt;<br>=C2=A0 =C2=A0 main()<br>=C2=A0 File &quot;/home/=
sneha/My_waveform/past work/transmit.py&quot;, line 402, in main<br>=C2=A0 =
=C2=A0 tb =3D top_block_cls()<br>=C2=A0 File &quot;/home/sneha/My_waveform/=
past work/transmit.py&quot;, line 250, in __init__<br>=C2=A0 =C2=A0 callbac=
k=3Dlambda ok, payload: self.digital_ofdm_demod_0.recv_pkt(ok, payload),<br=
>=C2=A0 File &quot;/usr/local/lib/python2.7/dist-packages/gnuradio/digital/=
ofdm.py&quot;, line 223, in __init__<br>=C2=A0 =C2=A0 options.log)<br>=C2=
=A0 File &quot;/usr/local/lib/python2.7/dist-packages/gnuradio/digital/ofdm=
_receiver.py&quot;, line 78, in __init__<br>=C2=A0 =C2=A0 filter.firdes.WIN=
_HAMMING) =C2=A0 # filter type<br>=C2=A0 File &quot;/usr/local/lib/python2.=
7/dist-packages/gnuradio/filter/filter_swig.py&quot;, line 143, in low_pass=
<br>=C2=A0 =C2=A0 return _filter_swig.firdes_low_pass(*args, **kwargs)<br><=
div>RuntimeError: firdes check failed: 0 &lt; fa &lt;=3D sampling_freq / 2<=
/div><div><br></div><div><br></div><div>Regards,</div><div>sneha<br></div><=
br></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature">Leandro Echevarr=C3=ADa<br></div>

--000000000000011dc6058a960633--


--===============3199552607721245209==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3199552607721245209==--

