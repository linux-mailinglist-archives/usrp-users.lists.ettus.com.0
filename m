Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E3C9365AEF
	for <lists+usrp-users@lfdr.de>; Tue, 20 Apr 2021 16:11:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 342573842E0
	for <lists+usrp-users@lfdr.de>; Tue, 20 Apr 2021 10:11:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=vectalabs-com.20150623.gappssmtp.com header.i=@vectalabs-com.20150623.gappssmtp.com header.b="Csc4CPkb";
	dkim-atps=neutral
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com [209.85.217.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 6AF383843B2
	for <usrp-users@lists.ettus.com>; Tue, 20 Apr 2021 10:01:30 -0400 (EDT)
Received: by mail-vs1-f44.google.com with SMTP id i9so4514692vsb.13
        for <usrp-users@lists.ettus.com>; Tue, 20 Apr 2021 07:01:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vectalabs-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=cUgRs6I7vRZmbClT68WLvi/w+H0dJ+uBGhdScCREHA0=;
        b=Csc4CPkbve9CxUZ3ktLNPPQoWh5mzDKSmU9PhMfamf3srdVK6ht8keVQ5VKBbK3lBc
         MIqgpO5GjcfAsKwkbSCpdtOfYCp2A7oEvR0S0NsnfkBDukdrtqWmtHQvjkveIU6jIwB7
         f26NkI0b5qBoCxDoCnZ/Eg73v6Xmz3ze429WbOij6zD/E1sIU3DYztdUqxCWrG4/wq0Z
         HOD5x3ep2Yz5xf5ojcT+WKSjASNhv5eqEm+HGW1CC+A8j4xmwUuGbMx6POk84idRKtnW
         lXN4AjKri6UOQwg6LzfVCTTxIMAv7M57XZW0B0nVmRXxck9uh02ljVFweS+o0UcsmthR
         uaPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=cUgRs6I7vRZmbClT68WLvi/w+H0dJ+uBGhdScCREHA0=;
        b=UQXTOR9FLjVDOK1pT0OTIr9roNMUpR7rcMz0E/tfSm+f3Ko66qMaxSsVqNwBxYuE47
         x71urM62itYUP38LloI9E3ZHd9nhX9mTm2xfjcSvNo+5FcQ/fO2XnPYIIBxiO6q2d/ei
         PGmSMtDYTNQtpq1rcAWY/IInO4Nfr8gMMHEHk8ro5PDNBapZaSYBAZHFOWODfZ/GVx/n
         JCtxy1oRNqgDReSWJXWpnrwNBjZylX4t3kzmm+smiH67MvoYshBCt6b2jov85ITgr7VH
         T43JoTVuUYXmzmyQl2u/GSfmoEoJRolc1S9aNiSImaXuGwEiDWJbmhyHbWY6PDdBJCGT
         SVfA==
X-Gm-Message-State: AOAM530h4ejTnUz4Dw/6KiZv6OkE3FIliMpYgbIF4d3Og7YxNuFB01+s
	ULNHbXRiQimZ54p/Xr3dP7U0v88mOJw9Pw94nvJHow==
X-Google-Smtp-Source: ABdhPJyR27PeSQAsuLlR84b2ZHuomTAv6nw2BKKKk3IQHyJrvxgS4tP1OhCaotpC7kyEaRYaZ/u2Ua03NGPPf+lEhtA=
X-Received: by 2002:a67:b447:: with SMTP id c7mr20195067vsm.30.1618927289494;
 Tue, 20 Apr 2021 07:01:29 -0700 (PDT)
MIME-Version: 1.0
References: <8BD61B25-5BDD-4864-8C30-B1C133F513F2@gmail.com>
 <C7A28B54-D688-46B6-ACB1-A5739D949AFE@gmail.com> <CALNMZ8WiRaZbvALNifxMPBpPPYuZ1-eFRHZ0A-8E=A2swFYgsQ@mail.gmail.com>
 <607E0593.1040807@gmail.com> <CALNMZ8U3m_oj3T67VqZYOV53J3sCb=7=NCat2E0TnMvEB1QEbg@mail.gmail.com>
 <607E0A1C.5050608@gmail.com> <CALNMZ8V_1+PC-GdxwFY6iDT6WqGpOqzWbwN=XJQ4EjY-yfcfVg@mail.gmail.com>
 <20210420111632.lixq2x3mcryavb6d@barbe> <CALNMZ8XW0Z3EnaLUvfHDZY3GP87R9F+i-e9xOi_BZiYof4c59w@mail.gmail.com>
 <20210420131921.g6dloxbg7o7valro@barbe>
In-Reply-To: <20210420131921.g6dloxbg7o7valro@barbe>
From: Brendan Horsfield <brendan.horsfield@vectalabs.com>
Date: Wed, 21 Apr 2021 00:01:18 +1000
Message-ID: <CALNMZ8UWY6SB+X=wOJpzhB6GfxVYyvaZc4A6onYBz3iaefp5tQ@mail.gmail.com>
To: =?UTF-8?Q?C=C3=A9dric_Hannotier?= <cedric.hannotier@ulb.be>,
	usrp-users@lists.ettus.com
Message-ID-Hash: AD7J337UOJB4EU3KQPICZX6YQSZYEBLX
X-Message-ID-Hash: AD7J337UOJB4EU3KQPICZX6YQSZYEBLX
X-MailFrom: brendan.horsfield@vectalabs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD dual-install issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AD7J337UOJB4EU3KQPICZX6YQSZYEBLX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4094494742913275432=="

--===============4094494742913275432==
Content-Type: multipart/alternative; boundary="0000000000000239fd05c067e22c"

--0000000000000239fd05c067e22c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi

>>I do not get this part. What do you mean by "reinstalled"?
>>Did you installed GNU Radio from source or from Ubuntu Software?
>>If you download the source, build and install it (following GNU Radio
wiki),
>>then you cannot install it using Ubuntu Software (or apt) afterwards.
>>It is one or the other, not both.

Hmm.  I have been assuming all this time that GNU Radio Companion is an
optional GUI front end for GNU Radio, which must be installed separately.

In my case, I definitely installed GNU Radio from source.  However, when
that was finished, I then went into Ubuntu Software and installed GNU Radio
Companion, which placed an icon on my toolbar (which is how I launch the
application).  I am guessing this was the wrong thing to do?

FYI -- If I open a terminal and type "gnuradio-companion", the GUI never
launches, and all I get is the following error message:

$ gnuradio-companion
<<< Welcome to GNU Radio Companion 3.9.0.0 >>>

Block paths:
/usr/local/share/gnuradio/grc/blocks

Loading:
"/home/anyone/Documents/Brendan/GNU-Radio/save_rx_samples_to_file.grc"
>>> Converting from XML
/usr/lib/python3.6/importlib/_bootstrap.py:219: ImportWarning: can't
resolve package from __spec__ or __package__, falling back on __name__ and
__path__
  return f(*args, **kwds)
>>> Done

Loading:
"/home/anyone/Documents/Brendan/GNU-Radio/spectrum_analyser_two_chan.grc"
>>> Converting from XML
Segmentation fault (core dumped)

To answer your other questions:

If I type "/sbin/ldconfig -p | grep -F libuhd", here is what I get:
libuhd.so.4.0.0 (libc6,x86-64) =3D> /usr/local/lib/libuhd.so.4.0.0
libuhd.so.3.15.0 (libc6,x86-64) =3D>
/usr/lib/x86_64-linux-gnu/libuhd.so.3.15.0
libuhd.so.003.010.003 (libc6,x86-64) =3D>
/usr/lib/x86_64-linux-gnu/libuhd.so.003.010.003
libuhd.so (libc6,x86-64) =3D> /usr/local/lib/libuhd.so

Finally, when I type dpkg -S "(libuhd.so.003.010.003
"/usr/lib/x86_64-linux-gnu")", I get the response
dpkg-query: no path found matching pattern *(libuhd.so.003.010.003
/usr/lib/x86_64-linux-gnu)*

Regards,
Brendan.



On Tue, Apr 20, 2021 at 11:20 PM C=C3=A9dric Hannotier via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Brendan,
>
> On 20/04/21 22:15, Brendan Horsfield wrote:
> > I have verified the installation as follows:
> >
> > [...]
> >    - Reinstalled GNU Radio Companion via Ubuntu Software & Updates
> utility
>
> I do not get this part. What do you mean by "reinstalled"?
> Did you installed GNU Radio from source or from Ubuntu Software?
> If you download the source, build and install it (following GNU Radio
> wiki),
> then you cannot install it using Ubuntu Software (or apt) afterwards.
> It is one or the other, not both.
>
> > Next, I opened GNU Radio Companion and tried to connect to a UHD source
> > like before.  Result:  Exactly the same problem as before!  GRC is stil=
l
> > pulling in UHD 3.10, even though I did not install that version of UHD:
> >
> > linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unkno=
wn
>
> Do you know where this libuhd3.10 comes from?
> Is it pulled by something or do you have a previous UHD installation?
> /sbin/ldconfig -p | grep -F libuhd
> should help you find where is located "libuhd.so.003.010.003".
>
> Your package manager should be able to tell you if the file belongs to
> any installed package:
> dpkg -S "$(basename "PATH")"
>
> where PATH is the path of libuhd 3.10 reported by ldconfig.
>
> Regards
> --
>
> C=C3=A9dric Hannotier
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000000239fd05c067e22c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0<div><br></div><div>&gt;&gt;I do not get this part=
. What do you mean by &quot;reinstalled&quot;?<br>&gt;&gt;Did you installed=
 GNU Radio from source or from Ubuntu Software?<br>&gt;&gt;If you download =
the source, build and install it (following GNU Radio wiki),<br>&gt;&gt;the=
n you cannot install it using Ubuntu Software (or apt) afterwards.<br>&gt;&=
gt;It is one or the other, not both.<br></div><div><br></div><div>Hmm.=C2=
=A0 I have been assuming all this time that GNU Radio Companion is an optio=
nal GUI front end for GNU Radio,=C2=A0which must be installed separately.=
=C2=A0</div><div><br></div><div>In my case, I definitely installed GNU Radi=
o from source.=C2=A0 However, when that was finished, I then went into Ubun=
tu Software and installed GNU Radio Companion,=C2=A0which placed an icon on=
 my toolbar (which is how I launch the application).=C2=A0 I am guessing th=
is was the wrong thing to do?</div><div><br></div><div>FYI -- If I open a t=
erminal and type &quot;gnuradio-companion&quot;, the GUI never launches, an=
d all I get is the following error message:</div><div><br></div><div><font =
face=3D"monospace">$ gnuradio-companion<br>&lt;&lt;&lt; Welcome to GNU Radi=
o Companion 3.9.0.0 &gt;&gt;&gt;<br><br>Block paths:<br>	/usr/local/share/g=
nuradio/grc/blocks<br><br>Loading: &quot;/home/anyone/Documents/Brendan/GNU=
-Radio/save_rx_samples_to_file.grc&quot;<br>&gt;&gt;&gt; Converting from XM=
L<br>/usr/lib/python3.6/importlib/_bootstrap.py:219: ImportWarning: can&#39=
;t resolve package from __spec__ or __package__, falling back on __name__ a=
nd __path__<br>=C2=A0 return f(*args, **kwds)<br>&gt;&gt;&gt; Done<br><br>L=
oading: &quot;/home/anyone/Documents/Brendan/GNU-Radio/spectrum_analyser_tw=
o_chan.grc&quot;<br>&gt;&gt;&gt; Converting from XML<br>Segmentation fault =
(core dumped)</font><br></div><div><br></div><div>To answer your other ques=
tions:=C2=A0</div><div><br></div><div>If I type &quot;/sbin/ldconfig -p | g=
rep -F libuhd&quot;, here is what I get:</div><div><font face=3D"monospace"=
>	libuhd.so.4.0.0 (libc6,x86-64) =3D&gt; /usr/local/lib/libuhd.so.4.0.0<br>=
	libuhd.so.3.15.0 (libc6,x86-64) =3D&gt; /usr/lib/x86_64-linux-gnu/libuhd.s=
o.3.15.0<br>	libuhd.so.003.010.003 (libc6,x86-64) =3D&gt; /usr/lib/x86_64-l=
inux-gnu/libuhd.so.003.010.003<br>	libuhd.so (libc6,x86-64) =3D&gt; /usr/lo=
cal/lib/libuhd.so</font><br></div><div><br></div><div>Finally, when I type =
dpkg -S &quot;(libuhd.so.003.010.003 &quot;/usr/lib/x86_64-linux-gnu&quot;)=
&quot;, I get the response</div><font face=3D"monospace">dpkg-query: no pat=
h found matching pattern *(libuhd.so.003.010.003 /usr/lib/x86_64-linux-gnu)=
*</font><div><br></div><div>Regards,</div><div>Brendan.</div><div><br><div>=
<br></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, Apr 20, 2021 at 11:20 PM C=C3=A9dric Hannotier via =
USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lis=
ts.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">Hi Brendan,<br>
<br>
On 20/04/21 22:15, Brendan Horsfield wrote:<br>
&gt; I have verified the installation as follows:<br>
&gt; <br>
&gt; [...]<br>
&gt;=C2=A0 =C2=A0 - Reinstalled GNU Radio Companion via Ubuntu Software &am=
p; Updates utility<br>
<br>
I do not get this part. What do you mean by &quot;reinstalled&quot;?<br>
Did you installed GNU Radio from source or from Ubuntu Software?<br>
If you download the source, build and install it (following GNU Radio wiki)=
,<br>
then you cannot install it using Ubuntu Software (or apt) afterwards.<br>
It is one or the other, not both.<br>
<br>
&gt; Next, I opened GNU Radio Companion and tried to connect to a UHD sourc=
e<br>
&gt; like before.=C2=A0 Result:=C2=A0 Exactly the same problem as before!=
=C2=A0 GRC is still<br>
&gt; pulling in UHD 3.10, even though I did not install that version of UHD=
:<br>
&gt; <br>
&gt; linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unkn=
own<br>
<br>
Do you know where this libuhd3.10 comes from?<br>
Is it pulled by something or do you have a previous UHD installation?<br>
/sbin/ldconfig -p | grep -F libuhd<br>
should help you find where is located &quot;libuhd.so.003.010.003&quot;.<br=
>
<br>
Your package manager should be able to tell you if the file belongs to<br>
any installed package:<br>
dpkg -S &quot;$(basename &quot;PATH&quot;)&quot;<br>
<br>
where PATH is the path of libuhd 3.10 reported by ldconfig.<br>
<br>
Regards<br>
-- <br>
<br>
C=C3=A9dric Hannotier<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000000239fd05c067e22c--

--===============4094494742913275432==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4094494742913275432==--
