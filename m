Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C0CF5B0089
	for <lists+usrp-users@lfdr.de>; Wed, 11 Sep 2019 17:50:49 +0200 (CEST)
Received: from [::1] (port=59444 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i84tD-0001n6-QS; Wed, 11 Sep 2019 11:50:39 -0400
Received: from mail-ot1-f41.google.com ([209.85.210.41]:39849)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1i84t9-0001fq-E6
 for usrp-users@lists.ettus.com; Wed, 11 Sep 2019 11:50:35 -0400
Received: by mail-ot1-f41.google.com with SMTP id n7so23016662otk.6
 for <usrp-users@lists.ettus.com>; Wed, 11 Sep 2019 08:50:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MZ4keq6OEyMjxbuxlStGRhNIM6vF5Ay9+Kf4Khq+hHI=;
 b=Bktb+cCbsrqV7LvN5ouH2O4ppFj32Bl2Iqs+oy/vmdPm4FeJ4tAdz6THDcn/tGnAh3
 8FiGILeH/+vmJBzGBrOFEZGesMVgfz0xsj8s/Ob4cs7FH7DiOvq62ms9WtYYNm/eJWcy
 bSR71bODV5LTOdm/7YQwqS1iEDYktO3MsrEOc0I5g/xbSsHhi9NjxTnveAmW7z4G4p0t
 RGAi76HATcdTfi6XTNhblbdqmbD+KRKv81YHQk0E60CW9h3hp3fNITbdH7Fh14VZ6IPu
 3rV+q8oZRy+8Yyx1EnNp1gZ7THuibVvhZWlck9LJyDlUfkC2MVKORUCssXHgAkVmRXw/
 txxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MZ4keq6OEyMjxbuxlStGRhNIM6vF5Ay9+Kf4Khq+hHI=;
 b=Ra77djqtrMsJ6CAFlWjz+8lXbDEuPAJWxY2inU7JnpkYm9Ix0S8iWQwXe7z4g0ZFSj
 vYHZjRq8IwBX5AVAV0gMsDHIbGWxr87zbnMPnZYBf/rvO73qyXa7oAiUftWyXK2Jdvjp
 Y24U/AP7uHDRx8EQcPjFY9JeTTE2eWC/WC7l9MbMs7RzsYvmfd1s5daZVuKfxx+MB0ZA
 OoGedTrpw7AaVgQslhBnsSYZ1ShA0Va1DwBiWAda5DWKP6B+iGpgpKdeJXYa+hS3fnh4
 xVCdxiC6mcrMPdVVBMhGNbFu8zJYWRsVDkhx5ENJ+mcugd1A5xkW+PRXUsHOOB0V+We8
 9c1A==
X-Gm-Message-State: APjAAAXBpKUuyqDrDMoNzbvyJK7dF0EZWnFddwrlT9xkH1FVYmSgWscO
 4aJNhgRhW2USopcfIlv8yPMfGLjfVhCkmeFv7D/LYPq2
X-Google-Smtp-Source: APXvYqwmZolqEvbwtfVe6iIMHxCBIqL1SYo/61QW+s0cxg0JFrDFixMQt/Li9eNnQFoBIfvXHLdq+KHeJmj9Zju9UvE=
X-Received: by 2002:a05:6830:1305:: with SMTP id
 p5mr11886352otq.32.1568216994737; 
 Wed, 11 Sep 2019 08:49:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTSxpErvsfskWaZMGuSkXCmXOP+nH7KVARXNXzgcZcz_Yg@mail.gmail.com>
In-Reply-To: <CAB__hTSxpErvsfskWaZMGuSkXCmXOP+nH7KVARXNXzgcZcz_Yg@mail.gmail.com>
Date: Wed, 11 Sep 2019 10:50:30 -0700
Message-ID: <CAL263iwUChY77FaRFsTg2VSZM2dGxZ7eOHphc-VVfJJyPqrn+g@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Subject: Re: [USRP-users] Error running 1024 pt FFT block on N310
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
From: Nate Temple via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Temple <nate.temple@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1850847974793374878=="
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

--===============1850847974793374878==
Content-Type: multipart/alternative; boundary="000000000000e7013b059248f840"

--000000000000e7013b059248f840
Content-Type: text/plain; charset="UTF-8"

Hi Rob,

The N3xx (and E3xx) only support having an FFT size up to 512 due to the
page size. It'd be possible to modify the blocks to break up the FFT over
several packets but it is not currently implemented. The X310 as is
supports up to a 1024 point FFT.

Regards,
Nate Temple

On Mon, Sep 9, 2019 at 12:35 PM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
> I am having trouble running the FFT block of size 1024 on an N310.  I am
> using the "rfnoc_rx_to_file" example program (UHD v3.14.1.0) to run it.  It
> works with size 256 or 512.  Additionally, I am able to run with 1024 if I
> switch to an X310 (same PC). Please let me know if you have any ideas...
> Rob
>
> *Here is the command that fails:*
>
> rfnoc_rx_to_file --args="type=n3xx" --nsamps=65536 --block-id=FFT_0
> --block-args="spp=1024" --rate=125e6 --freq=2400e6 --radio-args="spp=1024"
>
> *The following is the output with error message:*
>
> Using radio 0, channel 0
> Setting RX Rate: 125.000000 Msps...
> Actual RX Rate: 125.000000 Msps...
>
> Setting RX Freq: 2400.000000 MHz...
> Actual RX Freq: 2400.000000 MHz...
>
> Connecting 0/Radio_0 ==> 0/FFT_0
> [WARNING] [RFNOC] Assuming max packet size for 0/Radio_0
> Samples per packet: 1024
> Using streamer args: block_id=0/FFT_0,spp=1024
> Issuing stream cmd
> [ERROR] [RX FLOW CTRL] Error unpacking packet: ValueError: Bad CHDR or
> packet fragment
>
> [ERROR] [STREAMER] The receive packet handler caught a value exception.
> ValueError: Bad CHDR or packet fragment
> Error: Receiver error: ERROR_CODE_BAD_PACKET
>
> *Note that the following works fine with an X310*
>
> rfnoc_rx_to_file --args="type=x300" --nsamps=65536 --block-id=FFT_0
> --block-args="spp=1024" --rate=100e6 --freq=2400e6
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000e7013b059248f840
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Rob,<br><br>The N3xx (and E3xx) only support having =
an FFT size up to 512 due to the page size. It&#39;d be possible to modify =
the blocks to break up the FFT over several packets but it is not currently=
 implemented. The X310 as is supports up to a 1024 point FFT.<br><br>Regard=
s,<br>Nate Temple</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Mon, Sep 9, 2019 at 12:35 PM Rob Kossler via USRP=
-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.e=
ttus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"ltr">Hi,<br><div>I am having trouble running the FFT bl=
ock of size 1024 on an N310.=C2=A0 I am using the &quot;rfnoc_rx_to_file&qu=
ot; example program (UHD v3.14.1.0) to run it.=C2=A0 It works with size 256=
 or 512.=C2=A0 Additionally, I am able to run with 1024 if I switch to an X=
310 (same PC). Please let me know if you have any ideas...</div><div>Rob</d=
iv><div><br></div><div><b>Here is the command that fails:</b></div><div><br=
></div><div><font face=3D"monospace">rfnoc_rx_to_file --args=3D&quot;type=
=3Dn3xx&quot; --nsamps=3D65536 --block-id=3DFFT_0 --block-args=3D&quot;spp=
=3D1024&quot; --rate=3D125e6 --freq=3D2400e6 --radio-args=3D&quot;spp=3D102=
4&quot;</font><br></div><div><br></div><div><b>The following is the output =
with error message:</b></div><div><br></div><div><font face=3D"monospace">U=
sing radio 0, channel 0<br>Setting RX Rate: 125.000000 Msps...<br>Actual RX=
 Rate: 125.000000 Msps...<br><br>Setting RX Freq: 2400.000000 MHz...<br>Act=
ual RX Freq: 2400.000000 MHz...<br><br>Connecting 0/Radio_0 =3D=3D&gt; 0/FF=
T_0<br>[WARNING] [RFNOC] Assuming max packet size for 0/Radio_0<br>Samples =
per packet: 1024<br>Using streamer args: block_id=3D0/FFT_0,spp=3D1024<br>I=
ssuing stream cmd<br>[ERROR] [RX FLOW CTRL] Error unpacking packet: ValueEr=
ror: Bad CHDR or packet fragment<br><br>[ERROR] [STREAMER] The receive pack=
et handler caught a value exception.<br>ValueError: Bad CHDR or packet frag=
ment<br>Error: Receiver error: ERROR_CODE_BAD_PACKET</font><br></div><div><=
br></div><div><b>Note that the following works fine with an X310</b></div><=
div><br></div><div><font face=3D"monospace">rfnoc_rx_to_file --args=3D&quot=
;type=3Dx300&quot; --nsamps=3D65536 --block-id=3DFFT_0 --block-args=3D&quot=
;spp=3D1024&quot; --rate=3D100e6 --freq=3D2400e6</font><br></div><div><font=
 face=3D"monospace"><br></font></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000e7013b059248f840--


--===============1850847974793374878==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1850847974793374878==--

