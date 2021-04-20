Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E848E36625D
	for <lists+usrp-users@lfdr.de>; Wed, 21 Apr 2021 01:08:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0F01B3841D0
	for <lists+usrp-users@lfdr.de>; Tue, 20 Apr 2021 19:08:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=vectalabs-com.20150623.gappssmtp.com header.i=@vectalabs-com.20150623.gappssmtp.com header.b="W0KTk9Cj";
	dkim-atps=neutral
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com [209.85.217.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 22071383E56
	for <usrp-users@lists.ettus.com>; Tue, 20 Apr 2021 19:07:29 -0400 (EDT)
Received: by mail-vs1-f44.google.com with SMTP id t23so3892718vso.11
        for <usrp-users@lists.ettus.com>; Tue, 20 Apr 2021 16:07:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vectalabs-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=iWrj2HxD9I4RGv5RAleYeLSxXmYOHupQv/XCYLs/CvY=;
        b=W0KTk9CjPwHPV0QuJnoI0ByBKU6XT44yXBalqFAEij4fxfEMqvVpiLkQwPd/yyqkq+
         O5v6ng0246V9RKqeMV3WMroDGKasNnhuVH5EEu1diotq1ty2oaIzwzYJv+xVbkHD9Ofv
         x/Gf7kZZZerl03bCfp/L8eQUoNSY+u12UXyBOyfVt4H1xGfJKpoYvjGvDAEBpHiDuSja
         Nh7ZDumBe60bwxk625yS2CvwTuaxeytsiu6FP2dzuE3t4pcbGC2KBaxtoUQr8WiseXup
         CzADIHeivEP94oyEZlJCMpT6WWY0Z7+VSmfTbBQSRu5fp+iRx+UY5X7N0hA6bSTcwJyq
         Y7xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=iWrj2HxD9I4RGv5RAleYeLSxXmYOHupQv/XCYLs/CvY=;
        b=aQgBFY/ivGoEFRC2tSil1LkltD0NSnaLcmYn7vaKvjVnRKxDD7qPPp8bLrlVvHLzlE
         vYlNe5Bco/7PjyBUCRy63E9oHtdHa9TsSaQilvxyx8/mA8HNekre7S7vm1sHS9hNzAS5
         3UyDzB2KvcXdLUBP3y88QRuJyJpd+6dia/sJ2hOPr21PlpgQk6gajHD7e25o64szPpaq
         G841PNgrPbhLEI9DiZn3S4FNoWzULsQqq9KNL/H1tq7oz0+DFxhcUJSPLd/LfkYBJGtc
         UOAQMyp4s91+adv/sfqbz0Vb/nNSiGyGmhG4v6tB1uctNW9Ldfrp5w7WLBwqOJQPl5u0
         xEog==
X-Gm-Message-State: AOAM531wtUT6p8XpqLkOiNiULWe1uqlj1DfYukJTFNaJThMS1l1Hx5gX
	uWY51jZLzU9Y9CQIU5epdIQYm9l9f0BiKwHndO3oVTEtXweIv8yN
X-Google-Smtp-Source: ABdhPJx5S1m7dheiiqAHDiJQO3TkMKDgoXalyxGsNpks3wNmAw7aoUekkmsz0BkoDvFp99gYhFSgOz+lHwdHQVCha+s=
X-Received: by 2002:a05:6102:941:: with SMTP id a1mr11154228vsi.32.1618960047972;
 Tue, 20 Apr 2021 16:07:27 -0700 (PDT)
MIME-Version: 1.0
References: <C7A28B54-D688-46B6-ACB1-A5739D949AFE@gmail.com>
 <CALNMZ8WiRaZbvALNifxMPBpPPYuZ1-eFRHZ0A-8E=A2swFYgsQ@mail.gmail.com>
 <607E0593.1040807@gmail.com> <CALNMZ8U3m_oj3T67VqZYOV53J3sCb=7=NCat2E0TnMvEB1QEbg@mail.gmail.com>
 <607E0A1C.5050608@gmail.com> <CALNMZ8V_1+PC-GdxwFY6iDT6WqGpOqzWbwN=XJQ4EjY-yfcfVg@mail.gmail.com>
 <20210420111632.lixq2x3mcryavb6d@barbe> <CALNMZ8XW0Z3EnaLUvfHDZY3GP87R9F+i-e9xOi_BZiYof4c59w@mail.gmail.com>
 <20210420131921.g6dloxbg7o7valro@barbe> <CALNMZ8UWY6SB+X=wOJpzhB6GfxVYyvaZc4A6onYBz3iaefp5tQ@mail.gmail.com>
 <20210420151340.mrvuxdh25wvtd6oz@barbe>
In-Reply-To: <20210420151340.mrvuxdh25wvtd6oz@barbe>
From: Brendan Horsfield <brendan.horsfield@vectalabs.com>
Date: Wed, 21 Apr 2021 09:07:16 +1000
Message-ID: <CALNMZ8WtYdpxN_-g2AO_3hqWRORJ3f0Vf81qdPFf2QJgFFAP=g@mail.gmail.com>
To: =?UTF-8?Q?C=C3=A9dric_Hannotier?= <cedric.hannotier@ulb.be>,
	usrp-users@lists.ettus.com
Message-ID-Hash: F3XDXDWE5KF35BAQB5WLPVA3UTGZF66W
X-Message-ID-Hash: F3XDXDWE5KF35BAQB5WLPVA3UTGZF66W
X-MailFrom: brendan.horsfield@vectalabs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD dual-install issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/F3XDXDWE5KF35BAQB5WLPVA3UTGZF66W/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6031124595595761116=="

--===============6031124595595761116==
Content-Type: multipart/alternative; boundary="00000000000090f0f005c06f8289"

--00000000000090f0f005c06f8289
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi C=C3=A9dric,

Results of dpkg queries are given below.  It looks like those files are not
part of any installed packages:

$ dpkg -S "libuhd.so.003.010.003"  -->  dpkg-query: no path found matching
pattern *libuhd.so.003.010.003*
$ dpkg -S "$(basename "/usr/lib/x86_64-linux-gnu/libuhd.so.003.010.003")"
-->  dpkg-query: no path found matching pattern *libuhd.so.003.010.003*
$ dpkg -S "libuhd.so.3.15.0"  -->  dpkg-query: no path found matching
pattern *libuhd.so.3.15.0*
$ dpkg -S "$(basename "/usr/lib/x86_64-linux-gnu/libuhd.so.3.15.0")"  -->
dpkg-query: no path found matching pattern *libuhd.so.3.15.0*

What I find interesting is that when I run "gnuradio-companion" from the
terminal, it attempts to load my 2 most recent flowgraphs
"save_rx_samples_to_file.grc" and "spectrum_analyser_two_chan.grc", even
though I have never opened them in this version of gnuradio-companion.
This suggests that the built-from-source installation has been polluted by
a config file or history file from the Ubuntu Software version of GRC that
I installed over the top of the built-from-source version.

I think I will try and scrub my system of everything related to GNU Radio
this morning, and reinstall it from source one more time.  If it still
doesn't work, I will take it up with the GNU Radio mailing
list...........or possibly switch to Matlab!!  :)

Thanks & Regards,
Brendan.



On Wed, Apr 21, 2021 at 1:14 AM C=C3=A9dric Hannotier via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Brendan,
>
> On 21/04/21 00:01, Brendan Horsfield wrote:
> >> I do not get this part. What do you mean by "reinstalled"?
> >> Did you installed GNU Radio from source or from Ubuntu Software?
> >> If you download the source, build and install it (following GNU Radio
> >> wiki),
> >> then you cannot install it using Ubuntu Software (or apt) afterwards.
> >> It is one or the other, not both.
> >
> > Hmm.  I have been assuming all this time that GNU Radio Companion is an
> > optional GUI front end for GNU Radio, which must be installed separatel=
y.
> >
> > In my case, I definitely installed GNU Radio from source.  However, whe=
n
> > that was finished, I then went into Ubuntu Software and installed GNU
> Radio
> > Companion, which placed an icon on my toolbar (which is how I launch th=
e
> > application).  I am guessing this was the wrong thing to do?
>
> Yep, wrong way.
> gnuradio-companion is provided by gnuradio. It is not separated.
> Most of the time,
> doing "from source" installs everything under /usr/local/,
> while "from binaries" installs everything under /usr/.
> If you install both, you end up with 2 versions.
> Best case scenario is one is masking the other.
> Worst case scenario is clash between the two.
>
> > FYI -- If I open a terminal and type "gnuradio-companion", the GUI neve=
r
> > launches, and all I get is the following error message:
> >
> > $ gnuradio-companion
> > <<< Welcome to GNU Radio Companion 3.9.0.0 >>>
> >
> > Block paths:
> > /usr/local/share/gnuradio/grc/blocks
> >
> > Loading:
> > "/home/anyone/Documents/Brendan/GNU-Radio/save_rx_samples_to_file.grc"
> > >>> Converting from XML
> > /usr/lib/python3.6/importlib/_bootstrap.py:219: ImportWarning: can't
> > resolve package from __spec__ or __package__, falling back on __name__
> and
> > __path__
> >   return f(*args, **kwds)
> > >>> Done
> >
> > Loading:
> > "/home/anyone/Documents/Brendan/GNU-Radio/spectrum_analyser_two_chan.gr=
c"
> > >>> Converting from XML
> > Segmentation fault (core dumped)
>
> I do not know why it segfaults.
> If it does not solve by itself after solving the other parts,
> you could try GNU Radio 3.8 or ask on GNU Radio ML.
>
> > To answer your other questions:
> >
> > If I type "/sbin/ldconfig -p | grep -F libuhd", here is what I get:
> > libuhd.so.4.0.0 (libc6,x86-64) =3D> /usr/local/lib/libuhd.so.4.0.0
> > libuhd.so.3.15.0 (libc6,x86-64) =3D>
> > /usr/lib/x86_64-linux-gnu/libuhd.so.3.15.0
> > libuhd.so.003.010.003 (libc6,x86-64) =3D>
> > /usr/lib/x86_64-linux-gnu/libuhd.so.003.010.003
> > libuhd.so (libc6,x86-64) =3D> /usr/local/lib/libuhd.so
> >
> > Finally, when I type dpkg -S "(libuhd.so.003.010.003
> > "/usr/lib/x86_64-linux-gnu")", I get the response
> > dpkg-query: no path found matching pattern *(libuhd.so.003.010.003
> > /usr/lib/x86_64-linux-gnu)*
>
> Sorry if I was not clear, use:
> dpkg -S "libuhd.so.003.010.003"
>
> or:
> dpkg -S "$(basename "/usr/lib/x86_64-linux-gnu/libuhd.so.003.010.003")"
>
> I do not feed the fullpath to "dpkg -S" because with the /usr/ merge,
> dpkg can be confused.
>
> Could you do the same for libuhd.so.3.15.0?
>
> Regards
> --
>
> C=C3=A9dric Hannotier
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000090f0f005c06f8289
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi C=C3=A9dric,<div><br></div><div>Results of dpkg queries=
 are given below.=C2=A0 It looks like those files are not part of any insta=
lled packages:</div><div><br></div><div>$ dpkg -S &quot;libuhd.so.003.010.0=
03&quot;=C2=A0 --&gt;=C2=A0 dpkg-query: no path found matching pattern *lib=
uhd.so.003.010.003*<br></div><div>$ dpkg -S &quot;$(basename &quot;/usr/lib=
/x86_64-linux-gnu/libuhd.so.003.010.003&quot;)&quot;=C2=A0 --&gt;=C2=A0 dpk=
g-query: no path found matching pattern *libuhd.so.003.010.003*<br></div><d=
iv>$ dpkg -S &quot;libuhd.so.3.15.0&quot;=C2=A0 --&gt;=C2=A0 dpkg-query: no=
 path found matching pattern *libuhd.so.3.15.0*<br></div><div>$ dpkg -S &qu=
ot;$(basename &quot;/usr/lib/x86_64-linux-gnu/libuhd.so.3.15.0&quot;)&quot;=
=C2=A0 --&gt;=C2=A0 dpkg-query: no path found matching pattern *libuhd.so.3=
.15.0*<br></div><div><br></div><div>What I find interesting is that when I =
run &quot;gnuradio-companion&quot; from the terminal, it attempts to load m=
y 2 most recent flowgraphs &quot;save_rx_samples_to_file.grc&quot; and &quo=
t;spectrum_analyser_two_chan.grc&quot;, even though I have never opened the=
m in this version of gnuradio-companion.=C2=A0 This suggests that the built=
-from-source installation has been polluted by a config file or history fil=
e from the Ubuntu Software version of GRC that I installed over the top of =
the built-from-source version.</div><div><br></div><div>I think I will try =
and scrub my system of everything related to GNU Radio this morning, and re=
install=C2=A0it from source one more time.=C2=A0 If it still doesn&#39;t wo=
rk, I will take it up with the GNU Radio mailing list...........or possibly=
 switch to Matlab!!=C2=A0 :)</div><div><br></div><div>Thanks &amp; Regards,=
</div><div>Brendan.</div><div>=C2=A0</div><div>=C2=A0</div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Apr 21, =
2021 at 1:14 AM C=C3=A9dric Hannotier via USRP-users &lt;<a href=3D"mailto:=
usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Brendan,<br>
<br>
On 21/04/21 00:01, Brendan Horsfield wrote:<br>
&gt;&gt; I do not get this part. What do you mean by &quot;reinstalled&quot=
;?<br>
&gt;&gt; Did you installed GNU Radio from source or from Ubuntu Software?<b=
r>
&gt;&gt; If you download the source, build and install it (following GNU Ra=
dio<br>
&gt;&gt; wiki),<br>
&gt;&gt; then you cannot install it using Ubuntu Software (or apt) afterwar=
ds.<br>
&gt;&gt; It is one or the other, not both.<br>
&gt; <br>
&gt; Hmm.=C2=A0 I have been assuming all this time that GNU Radio Companion=
 is an<br>
&gt; optional GUI front end for GNU Radio, which must be installed separate=
ly.<br>
&gt; <br>
&gt; In my case, I definitely installed GNU Radio from source.=C2=A0 Howeve=
r, when<br>
&gt; that was finished, I then went into Ubuntu Software and installed GNU =
Radio<br>
&gt; Companion, which placed an icon on my toolbar (which is how I launch t=
he<br>
&gt; application).=C2=A0 I am guessing this was the wrong thing to do?<br>
<br>
Yep, wrong way.<br>
gnuradio-companion is provided by gnuradio. It is not separated.<br>
Most of the time,<br>
doing &quot;from source&quot; installs everything under /usr/local/,<br>
while &quot;from binaries&quot; installs everything under /usr/.<br>
If you install both, you end up with 2 versions.<br>
Best case scenario is one is masking the other.<br>
Worst case scenario is clash between the two.<br>
<br>
&gt; FYI -- If I open a terminal and type &quot;gnuradio-companion&quot;, t=
he GUI never<br>
&gt; launches, and all I get is the following error message:<br>
&gt; <br>
&gt; $ gnuradio-companion<br>
&gt; &lt;&lt;&lt; Welcome to GNU Radio Companion 3.9.0.0 &gt;&gt;&gt;<br>
&gt; <br>
&gt; Block paths:<br>
&gt; /usr/local/share/gnuradio/grc/blocks<br>
&gt; <br>
&gt; Loading:<br>
&gt; &quot;/home/anyone/Documents/Brendan/GNU-Radio/save_rx_samples_to_file=
.grc&quot;<br>
&gt; &gt;&gt;&gt; Converting from XML<br>
&gt; /usr/lib/python3.6/importlib/_bootstrap.py:219: ImportWarning: can&#39=
;t<br>
&gt; resolve package from __spec__ or __package__, falling back on __name__=
 and<br>
&gt; __path__<br>
&gt;=C2=A0 =C2=A0return f(*args, **kwds)<br>
&gt; &gt;&gt;&gt; Done<br>
&gt; <br>
&gt; Loading:<br>
&gt; &quot;/home/anyone/Documents/Brendan/GNU-Radio/spectrum_analyser_two_c=
han.grc&quot;<br>
&gt; &gt;&gt;&gt; Converting from XML<br>
&gt; Segmentation fault (core dumped)<br>
<br>
I do not know why it segfaults.<br>
If it does not solve by itself after solving the other parts,<br>
you could try GNU Radio 3.8 or ask on GNU Radio ML.<br>
<br>
&gt; To answer your other questions:<br>
&gt; <br>
&gt; If I type &quot;/sbin/ldconfig -p | grep -F libuhd&quot;, here is what=
 I get:<br>
&gt; libuhd.so.4.0.0 (libc6,x86-64) =3D&gt; /usr/local/lib/libuhd.so.4.0.0<=
br>
&gt; libuhd.so.3.15.0 (libc6,x86-64) =3D&gt;<br>
&gt; /usr/lib/x86_64-linux-gnu/libuhd.so.3.15.0<br>
&gt; libuhd.so.003.010.003 (libc6,x86-64) =3D&gt;<br>
&gt; /usr/lib/x86_64-linux-gnu/libuhd.so.003.010.003<br>
&gt; libuhd.so (libc6,x86-64) =3D&gt; /usr/local/lib/libuhd.so<br>
&gt; <br>
&gt; Finally, when I type dpkg -S &quot;(libuhd.so.003.010.003<br>
&gt; &quot;/usr/lib/x86_64-linux-gnu&quot;)&quot;, I get the response<br>
&gt; dpkg-query: no path found matching pattern *(libuhd.so.003.010.003<br>
&gt; /usr/lib/x86_64-linux-gnu)*<br>
<br>
Sorry if I was not clear, use:<br>
dpkg -S &quot;libuhd.so.003.010.003&quot;<br>
<br>
or:<br>
dpkg -S &quot;$(basename &quot;/usr/lib/x86_64-linux-gnu/libuhd.so.003.010.=
003&quot;)&quot;<br>
<br>
I do not feed the fullpath to &quot;dpkg -S&quot; because with the /usr/ me=
rge,<br>
dpkg can be confused.<br>
<br>
Could you do the same for libuhd.so.3.15.0?<br>
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

--00000000000090f0f005c06f8289--

--===============6031124595595761116==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6031124595595761116==--
