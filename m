Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B49B1F7F66
	for <lists+usrp-users@lfdr.de>; Sat, 13 Jun 2020 01:01:35 +0200 (CEST)
Received: from [::1] (port=36604 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jjsfz-0007zA-GR; Fri, 12 Jun 2020 19:01:31 -0400
Received: from mail-yb1-f171.google.com ([209.85.219.171]:42967)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <sam.reiter8@gmail.com>)
 id 1jjsfw-0007r7-2Y
 for usrp-users@lists.ettus.com; Fri, 12 Jun 2020 19:01:28 -0400
Received: by mail-yb1-f171.google.com with SMTP id t9so5682486ybk.9
 for <usrp-users@lists.ettus.com>; Fri, 12 Jun 2020 16:01:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=od1G7uZnRjT5Q/Geg6Jiu/TtpAtlc+lqflzGH3a5v5E=;
 b=ZQtSeiUBNZX1NaqIHZKP4CcnGrboglSmiJ8NrRV3fW8UUM7ahV3wKgrLtDaEC/zlXC
 7cxGIGmcPZsfSABpomIRhPsGayYcsrNZZt/d2OpTDsFtabEe7+Qj8SGLj3DrZBM0JmV/
 80gLDFy0yn+MsHAES+zldytxnklO7ehVC5USDm1CPVXhjmVHeESFeSZrTusbuAoHyh39
 UlLdv6zyvUEA9LNvzWX4tibwcNJqtgXwbKoUxcUxSC4XVrLqgxqz4PO/EGuWmJMixs5j
 x8qKKPQcrSzP3nYkMpHPOHk2E7SroBD6yVXZcGhRmM3PAof7VCuL7+LPe/JKU+m4jX0a
 7tDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=od1G7uZnRjT5Q/Geg6Jiu/TtpAtlc+lqflzGH3a5v5E=;
 b=d4gXwrFUYNlcp5WVWsp0aFPfOYzMbJVdFedaBAVQFaZbxVHWerxKl7MWmSUcWvVI1F
 OyM7g4EkaoQaUcM6YPNqOeOiB/NRzBp+efYmLaKEfwMOCBgnVnw6K4moETK2itQuhr21
 i0rdeDLlgimo4Hnf0rf78iUCraSCiYvyWukFAAP2mKUeFeSPaCW1bkuiI9Mf31OL2dt7
 irp8S4Ahr6i+l38qK8gs3EQFzMJ/B/coUDq6MgiMg1WO/PwEtJIU/F7O0wSnRx9MPQwo
 K/kRQ4s7WuQfYqPbwmID1FT+ymsBgdq/LG9StbKpKcWOm6Fr7XM3buFtoT/rE1UmVxhB
 wsdQ==
X-Gm-Message-State: AOAM531B3QOYzhqmohb6yBC2YTe9xcgwiv8ixzsPuArLeoWyzXtfJgSB
 WlFCBaJ0yUNTMlxDBCPhlcB6JoycdnBTdyMjKP8=
X-Google-Smtp-Source: ABdhPJx7+rHxNbLVfalZGLl9EsvLaXRA7N0fGyVt4J4EbHka3iNqOlyaaMRjAPpyQNj90xcDJmIMRU77ICaIDIcGv1g=
X-Received: by 2002:a25:b8c:: with SMTP id 134mr28016662ybl.428.1592002846177; 
 Fri, 12 Jun 2020 16:00:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAKyaCM64SK=LYavuWjdfM_XuPDb+LbuDu7R2=cuCGYqj03p6ew@mail.gmail.com>
 <584010aa-2013-efbf-835a-4d0366c5f77d@comcast.net>
In-Reply-To: <584010aa-2013-efbf-835a-4d0366c5f77d@comcast.net>
Date: Fri, 12 Jun 2020 18:00:35 -0500
Message-ID: <CADBWrHgrmqiyugp+SKOnwjU4Pb0Woupd5+vGm1gZ5eXwhs76Pg@mail.gmail.com>
To: Ron Economos <w6rz@comcast.net>
Cc: "usrp-users (usrp-users@lists.ettus.com)" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] [USRP-B200] Transmitting and Receiving with two
 boards B200 using MATLAB
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter8@gmail.com>
Content-Type: multipart/mixed; boundary="===============6775864020729501869=="
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

--===============6775864020729501869==
Content-Type: multipart/alternative; boundary="00000000000020be7005a7eb0c9c"

--00000000000020be7005a7eb0c9c
Content-Type: text/plain; charset="UTF-8"

Agreed with Ron. Remove one of the 30dB pads and play around with the gain
on the RX side to dial things in.

You could also run a simple example of transmitting and receiving a CW
between the boards. If you're not sharing a 10 MHz reference between
the two, you might find that there is a slight frequency offset between the
boards that you need to compensate for.

e.g. TX a CW at 1GHz using the UHD example tx_waveforms, and receive that
in with uhd_fft.grc (or rx_ascii_art_dft -
https://kb.ettus.com/Verifying_the_Operation_of_the_USRP_Using_UHD_and_GNU_Radio#Terminal_DFT.2FFFT).
If there's any kind of frequency offset between the two, you'll see it on
the RX side and you can either add in a frequency offset or introduce a
shared reference clock to compensate for it.

-Sam

On Fri, Jun 12, 2020 at 4:50 PM Ron Economos via USRP-users <
usrp-users@lists.ettus.com> wrote:

> 60 dB is a lot of attenuation. You can remove *one* of the 30 dB
> attenuators. For gain settings, 30 is good for RX and 50 to 60 is good for
> TX.
>
> Ron
> On 6/12/20 14:14, Thuc TheGifted via USRP-users wrote:
>
> Hi everyone,
>
> I am new to this USRP B200 board. I currently have two boards and I want
> to connect the Tx port of one board to the Rx port of another using a SMA
> cable to visualize the communication.
>
> So I start with something available online here
>
> https://www.mathworks.com/help/supportpkg/usrpradio/examples/qpsk-transmitter-with-usrp-r-hardware.html
>
> and
>
> https://www.mathworks.com/help/supportpkg/usrpradio/examples/qpsk-receiver-with-usrp-r-hardware.html
>
>
> Basically, my hardware connection is
> Computer_1 + B200_1(Tx port) + 30 dB attenuator + SMA cable + 30 dB
> attenuator + B200_2(Rx port) + Computer_2
>
> And I run the transmitter code on the computer_1 and run the receiver code
> on the computer_2. The transmitter light and the receiver light both turns
> on, so I think they are doing something.
>
> However the result I get on my receiver end on computer_2 is not good.
> They just look like noise.
>
> I think because I use a different kind of board, so I need to modify the
> gain parameters in the code. But I have no idea about how to make it
> correctly.
>
> I hope someone with more experience with this board can show me how to do
> it right.
> Could you please help me on this.
> Thank you.
>
> -Ves
>
> _______________________________________________
> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000020be7005a7eb0c9c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Agreed with Ron. Remove one of the 30dB pads and play=
 around with the gain on the RX side to dial things in.=C2=A0</div><div><br=
></div>You could also run a simple example of transmitting and receiving=C2=
=A0a CW between the boards. If you&#39;re not sharing a 10 MHz reference be=
tween the=C2=A0two, you might find that there is a slight frequency offset =
between the boards that you need to compensate for.=C2=A0<div><br></div><di=
v>e.g. TX a CW at 1GHz using the UHD example tx_waveforms, and receive that=
 in with uhd_fft.grc (or rx_ascii_art_dft -=C2=A0<a href=3D"https://kb.ettu=
s.com/Verifying_the_Operation_of_the_USRP_Using_UHD_and_GNU_Radio#Terminal_=
DFT.2FFFT">https://kb.ettus.com/Verifying_the_Operation_of_the_USRP_Using_U=
HD_and_GNU_Radio#Terminal_DFT.2FFFT</a>). If there&#39;s any kind of freque=
ncy offset between the two, you&#39;ll see it on the RX side and you can ei=
ther add in a frequency offset or introduce a shared reference clock to com=
pensate for it.=C2=A0</div><div><br></div><div>-Sam</div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 12, 20=
20 at 4:50 PM Ron Economos via USRP-users &lt;<a href=3D"mailto:usrp-users@=
lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <p>60 dB is a lot of attenuation. You can remove <b>one</b> of the
      30 dB attenuators. For gain settings, 30 is good for RX and 50 to
      60 is good for TX.</p>
    <p>Ron<br>
    </p>
    <div>On 6/12/20 14:14, Thuc TheGifted via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Hi everyone,
        <div><br>
        </div>
        <div>I am new to this USRP B200 board. I currently have two
          boards and I want to connect the Tx port of one board to the
          Rx port of another using a SMA cable to visualize the
          communication.</div>
        <div><br>
        </div>
        <div>So I start with something available=C2=A0online here</div>
        <div><a href=3D"https://www.mathworks.com/help/supportpkg/usrpradio=
/examples/qpsk-transmitter-with-usrp-r-hardware.html" target=3D"_blank">htt=
ps://www.mathworks.com/help/supportpkg/usrpradio/examples/qpsk-transmitter-=
with-usrp-r-hardware.html</a>=C2=A0</div>
        <div>and=C2=A0<br>
        </div>
        <div><a href=3D"https://www.mathworks.com/help/supportpkg/usrpradio=
/examples/qpsk-receiver-with-usrp-r-hardware.html" target=3D"_blank">https:=
//www.mathworks.com/help/supportpkg/usrpradio/examples/qpsk-receiver-with-u=
srp-r-hardware.html</a>=C2=A0=C2=A0<br>
        </div>
        <div><br>
        </div>
        <div>Basically, my hardware connection is</div>
        <div>Computer_1=C2=A0+ B200_1(Tx port) + 30 dB attenuator=C2=A0+ SM=
A
          cable=C2=A0+ 30 dB attenuator=C2=A0+ B200_2(Rx port)=C2=A0+ Compu=
ter_2</div>
        <div><br>
        </div>
        <div>And I run the transmitter code on the computer_1 and run
          the receiver code on the computer_2. The transmitter light and
          the receiver light both turns on, so I think they are doing
          something.</div>
        <div><br>
        </div>
        <div>However the result I get on my receiver end on computer_2
          is not good. They just look like noise.</div>
        <div><br>
        </div>
        <div>I think because I use a different kind of board, so I need
          to modify the gain parameters in the code. But I have no idea
          about how to make it correctly.</div>
        <div><br>
        </div>
        <div>I hope someone with more experience with this board can
          show me how to do it right.</div>
        <div>Could you please help me on this.</div>
        <div>Thank you.</div>
        <div><br>
        </div>
        <div>-Ves</div>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com</a>
</pre>
    </blockquote>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000020be7005a7eb0c9c--


--===============6775864020729501869==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6775864020729501869==--

