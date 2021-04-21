Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA293662CE
	for <lists+usrp-users@lfdr.de>; Wed, 21 Apr 2021 02:03:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C4987384179
	for <lists+usrp-users@lfdr.de>; Tue, 20 Apr 2021 20:02:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="DD/Bfo24";
	dkim-atps=neutral
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 602E338409D
	for <usrp-users@lists.ettus.com>; Tue, 20 Apr 2021 20:02:02 -0400 (EDT)
Received: by mail-qt1-f179.google.com with SMTP id o2so16649682qtr.4
        for <usrp-users@lists.ettus.com>; Tue, 20 Apr 2021 17:02:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=FEVbwM9AkaGy+DNM/YWoDQTcjy7Kcz6b9MnlNjY0AJU=;
        b=DD/Bfo24mkDEGLASkSGhvkYDO4/fn1xGWdFnqMWMyZo6ytJxCovGHW+LboLEQ9vkYW
         zt3U5LM2gCn7P+jz5WX655cr+UF5fAPsgcAxmOVI/OEGeDvyqR6vJmOEippxFScbZfTC
         r5QjbA1UFmoS7ie3l4DfcuwRdnok8RVfy0CwvC3lLwbgBf8BxVDmPbRCpM5NWo2utgac
         +TAEkujFDleDRKz5a0pcfqryPVOa4SAIJObBGGllW2Mrh1gX8FSjOzY7+CMkC97dbZrp
         ZMqUar/2zNfrG4sy3o/M7OO1bNxdpG+kMGhAouo7uXC4llo5m3wwJpU8XgPKu3TvHKdG
         bQOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=FEVbwM9AkaGy+DNM/YWoDQTcjy7Kcz6b9MnlNjY0AJU=;
        b=h+2/0fk/0EwGuuHYKVIsKTbWUdhwcoRnpOuUKfckK+TRGcl2b6pdtqEkovpJUrs44E
         pDMUOjwvTig3DtVRQzWKur4wIyihkDW34rfiICOLpx6IZ2+F9FsrEhb6DK14i6nolhMf
         /6Ndezt71rfG061rWFC4isoXSI4Po/EzNbSL+71MlCyVMcjjiLvbr/L6FQRjkDVIk0Ca
         bCLps9PXSFbhLHD2F5s3iuPY9RZs/TAiCAQixJzLnWrJWsum71MBC1C3UfdbvMsYssOQ
         WUXsFOQ0rQksrYGK7UC17AGzsyip4BX7c05aWBx4/j8WEAHVE9+rvjBJsjM2P2bEZpBQ
         1XSg==
X-Gm-Message-State: AOAM530Jeu4/3Fub+8TOxW0tfkx/gocTGtqfG9XYFu71Zg93rQe5yVnc
	4eVdm1w+/iUIuGVt/HkZ9o6NxgdRHnAaGQ==
X-Google-Smtp-Source: ABdhPJy/cLUYSCKzwbW9K72lbI+UudU9c/ye8oTMpYiy7QsduPU3QGX8cJsXKlVpH2wCrlcKuJKJlQ==
X-Received: by 2002:a05:622a:5d2:: with SMTP id d18mr18110137qtb.91.1618963321272;
        Tue, 20 Apr 2021 17:02:01 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id y15sm629959qkp.17.2021.04.20.17.02.00
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Apr 2021 17:02:00 -0700 (PDT)
Message-ID: <607F6B77.6020301@gmail.com>
Date: Tue, 20 Apr 2021 20:01:59 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <C7A28B54-D688-46B6-ACB1-A5739D949AFE@gmail.com> <CALNMZ8WiRaZbvALNifxMPBpPPYuZ1-eFRHZ0A-8E=A2swFYgsQ@mail.gmail.com> <607E0593.1040807@gmail.com> <CALNMZ8U3m_oj3T67VqZYOV53J3sCb=7=NCat2E0TnMvEB1QEbg@mail.gmail.com> <607E0A1C.5050608@gmail.com> <CALNMZ8V_1+PC-GdxwFY6iDT6WqGpOqzWbwN=XJQ4EjY-yfcfVg@mail.gmail.com> <20210420111632.lixq2x3mcryavb6d@barbe> <CALNMZ8XW0Z3EnaLUvfHDZY3GP87R9F+i-e9xOi_BZiYof4c59w@mail.gmail.com> <20210420131921.g6dloxbg7o7valro@barbe> <CALNMZ8UWY6SB+X=wOJpzhB6GfxVYyvaZc4A6onYBz3iaefp5tQ@mail.gmail.com> <20210420151340.mrvuxdh25wvtd6oz@barbe> <CALNMZ8WtYdpxN_-g2AO_3hqWRORJ3f0Vf81qdPFf2QJgFFAP=g@mail.gmail.com>
In-Reply-To: <CALNMZ8WtYdpxN_-g2AO_3hqWRORJ3f0Vf81qdPFf2QJgFFAP=g@mail.gmail.com>
Message-ID-Hash: QZZB6RFQPRS7W5RWWHPF67AZ7T2HVVAH
X-Message-ID-Hash: QZZB6RFQPRS7W5RWWHPF67AZ7T2HVVAH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD dual-install issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QZZB6RFQPRS7W5RWWHPF67AZ7T2HVVAH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3634506228907991140=="

This is a multi-part message in MIME format.
--===============3634506228907991140==
Content-Type: multipart/alternative;
 boundary="------------080602060503010408010906"

This is a multi-part message in MIME format.
--------------080602060503010408010906
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: quoted-printable

On 04/20/2021 07:07 PM, Brendan Horsfield wrote:
> Hi C=E9dric,
>
> Results of dpkg queries are given below.  It looks like those files=20
> are not part of any installed packages:
>
> $ dpkg -S "libuhd.so.003.010.003"  -->  dpkg-query: no path found=20
> matching pattern *libuhd.so.003.010.003*
> $ dpkg -S "$(basename=20
> "/usr/lib/x86_64-linux-gnu/libuhd.so.003.010.003")"  --> dpkg-query:=20
> no path found matching pattern *libuhd.so.003.010.003*
> $ dpkg -S "libuhd.so.3.15.0"  -->  dpkg-query: no path found matching=20
> pattern *libuhd.so.3.15.0*
> $ dpkg -S "$(basename "/usr/lib/x86_64-linux-gnu/libuhd.so.3.15.0")" =20
> --> dpkg-query: no path found matching pattern *libuhd.so.3.15.0*
>
> What I find interesting is that when I run "gnuradio-companion" from=20
> the terminal, it attempts to load my 2 most recent flowgraphs=20
> "save_rx_samples_to_file.grc" and "spectrum_analyser_two_chan.grc",=20
> even though I have never opened them in this version of=20
> gnuradio-companion.  This suggests that the built-from-source=20
> installation has been polluted by a config file or history file from=20
> the Ubuntu Software version of GRC that I installed over the top of=20
> the built-from-source version.
The various versions all share the same .gnuradio directory in your home=20
directory, so I would expect some tripping over
   each others feet.
>
> I think I will try and scrub my system of everything related to GNU=20
> Radio this morning, and reinstall it from source one more time.  If it=20
> still doesn't work, I will take it up with the GNU Radio mailing=20
> list...........or possibly switch to Matlab!!  :)
On Ubuntu 18.04, Gnu Radio and UHD installed from the official=20
repositories "just works", but won't have the Python API you're looking f=
or.

Your problems have basically been caused by switching between various=20
install methods, various versions, and not really having
   a good understanding of what is going on underneath.  The=20
package-management system cannot know nor make any rational
   decisions about bits and pieces you may have installed from source,=20
and the install-from-source has very little insight into what
   you might have installed from the package management system.  Once=20
you venture into "install from source" territory, you're
   basically doing the same tasks that a systems software developer=20
would do, and the tools necessarily assume that you know
   how to take on that role.  If you're doing a lot of this "back and=20
forth" from various package repositories, the official repositories,
   and source-based installs, you really need to be a "Linux Geek" in=20
order not to create the "tangle" that you've created for yourself.


>
> Thanks & Regards,
> Brendan.
>
> On Wed, Apr 21, 2021 at 1:14 AM C=E9dric Hannotier via USRP-users=20
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     Hi Brendan,
>
>     On 21/04/21 00:01, Brendan Horsfield wrote:
>     >> I do not get this part. What do you mean by "reinstalled"?
>     >> Did you installed GNU Radio from source or from Ubuntu Software?
>     >> If you download the source, build and install it (following GNU
>     Radio
>     >> wiki),
>     >> then you cannot install it using Ubuntu Software (or apt)
>     afterwards.
>     >> It is one or the other, not both.
>     >
>     > Hmm.  I have been assuming all this time that GNU Radio
>     Companion is an
>     > optional GUI front end for GNU Radio, which must be installed
>     separately.
>     >
>     > In my case, I definitely installed GNU Radio from source.=20
>     However, when
>     > that was finished, I then went into Ubuntu Software and
>     installed GNU Radio
>     > Companion, which placed an icon on my toolbar (which is how I
>     launch the
>     > application).  I am guessing this was the wrong thing to do?
>
>     Yep, wrong way.
>     gnuradio-companion is provided by gnuradio. It is not separated.
>     Most of the time,
>     doing "from source" installs everything under /usr/local/,
>     while "from binaries" installs everything under /usr/.
>     If you install both, you end up with 2 versions.
>     Best case scenario is one is masking the other.
>     Worst case scenario is clash between the two.
>
>     > FYI -- If I open a terminal and type "gnuradio-companion", the
>     GUI never
>     > launches, and all I get is the following error message:
>     >
>     > $ gnuradio-companion
>     > <<< Welcome to GNU Radio Companion 3.9.0.0 >>>
>     >
>     > Block paths:
>     > /usr/local/share/gnuradio/grc/blocks
>     >
>     > Loading:
>     >
>     "/home/anyone/Documents/Brendan/GNU-Radio/save_rx_samples_to_file.g=
rc"
>     > >>> Converting from XML
>     > /usr/lib/python3.6/importlib/_bootstrap.py:219: ImportWarning: ca=
n't
>     > resolve package from __spec__ or __package__, falling back on
>     __name__ and
>     > __path__
>     >   return f(*args, **kwds)
>     > >>> Done
>     >
>     > Loading:
>     >
>     "/home/anyone/Documents/Brendan/GNU-Radio/spectrum_analyser_two_cha=
n.grc"
>     > >>> Converting from XML
>     > Segmentation fault (core dumped)
>
>     I do not know why it segfaults.
>     If it does not solve by itself after solving the other parts,
>     you could try GNU Radio 3.8 or ask on GNU Radio ML.
>
>     > To answer your other questions:
>     >
>     > If I type "/sbin/ldconfig -p | grep -F libuhd", here is what I ge=
t:
>     > libuhd.so.4.0.0 (libc6,x86-64) =3D> /usr/local/lib/libuhd.so.4.0.=
0
>     > libuhd.so.3.15.0 (libc6,x86-64) =3D>
>     > /usr/lib/x86_64-linux-gnu/libuhd.so.3.15.0
>     > libuhd.so.003.010.003 (libc6,x86-64) =3D>
>     > /usr/lib/x86_64-linux-gnu/libuhd.so.003.010.003
>     > libuhd.so (libc6,x86-64) =3D> /usr/local/lib/libuhd.so
>     >
>     > Finally, when I type dpkg -S "(libuhd.so.003.010.003
>     > "/usr/lib/x86_64-linux-gnu")", I get the response
>     > dpkg-query: no path found matching pattern *(libuhd.so.003.010.00=
3
>     > /usr/lib/x86_64-linux-gnu)*
>
>     Sorry if I was not clear, use:
>     dpkg -S "libuhd.so.003.010.003"
>
>     or:
>     dpkg -S "$(basename
>     "/usr/lib/x86_64-linux-gnu/libuhd.so.003.010.003")"
>
>     I do not feed the fullpath to "dpkg -S" because with the /usr/ merg=
e,
>     dpkg can be confused.
>
>     Could you do the same for libuhd.so.3.15.0?
>
>     Regards
>     --=20
>
>     C=E9dric Hannotier
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     <mailto:usrp-users@lists.ettus.com>
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>     <mailto:usrp-users-leave@lists.ettus.com>
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com


--------------080602060503010408010906
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dwindows-1252"
      http-equiv=3D"Content-Type">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 04/20/2021 07:07 PM, Brendan
      Horsfield wrote:<br>
    </div>
    <blockquote
cite=3D"mid:CALNMZ8WtYdpxN_-g2AO_3hqWRORJ3f0Vf81qdPFf2QJgFFAP=3Dg@mail.gm=
ail.com"
      type=3D"cite">
      <div dir=3D"ltr">Hi C=E9dric,
        <div><br>
        </div>
        <div>Results of dpkg queries are given below.=A0 It looks like
          those files are not part of any installed packages:</div>
        <div><br>
        </div>
        <div>$ dpkg -S "libuhd.so.003.010.003"=A0 --&gt;=A0 dpkg-query: n=
o
          path found matching pattern *libuhd.so.003.010.003*<br>
        </div>
        <div>$ dpkg -S "$(basename
          "/usr/lib/x86_64-linux-gnu/libuhd.so.003.010.003")"=A0 --&gt;=A0
          dpkg-query: no path found matching pattern
          *libuhd.so.003.010.003*<br>
        </div>
        <div>$ dpkg -S "libuhd.so.3.15.0"=A0 --&gt;=A0 dpkg-query: no pat=
h
          found matching pattern *libuhd.so.3.15.0*<br>
        </div>
        <div>$ dpkg -S "$(basename
          "/usr/lib/x86_64-linux-gnu/libuhd.so.3.15.0")"=A0 --&gt;=A0
          dpkg-query: no path found matching pattern *libuhd.so.3.15.0*<b=
r>
        </div>
        <div><br>
        </div>
        <div>What I find interesting is that when I run
          "gnuradio-companion" from the terminal, it attempts to load my
          2 most recent flowgraphs "save_rx_samples_to_file.grc" and
          "spectrum_analyser_two_chan.grc", even though I have never
          opened them in this version of gnuradio-companion.=A0 This
          suggests that the built-from-source installation has been
          polluted by a config file or history file from the Ubuntu
          Software version of GRC that I installed over the top of the
          built-from-source version.</div>
      </div>
    </blockquote>
    The various versions all share the same .gnuradio directory in your
    home directory, so I would expect some tripping over<br>
    =A0 each others feet.<br>
    <blockquote
cite=3D"mid:CALNMZ8WtYdpxN_-g2AO_3hqWRORJ3f0Vf81qdPFf2QJgFFAP=3Dg@mail.gm=
ail.com"
      type=3D"cite">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>I think I will try and scrub my system of everything
          related to GNU Radio this morning, and reinstall=A0it from
          source one more time.=A0 If it still doesn't work, I will take
          it up with the GNU Radio mailing list...........or possibly
          switch to Matlab!!=A0 :)</div>
      </div>
    </blockquote>
    On Ubuntu 18.04, Gnu Radio and UHD installed from the official
    repositories "just works", but won't have the Python API you're
    looking for.<br>
    <br>
    Your problems have basically been caused by switching between
    various install methods, various versions, and not really having<br>
    =A0 a good understanding of what is going on underneath.=A0 The
    package-management system cannot know nor make any rational<br>
    =A0 decisions about bits and pieces you may have installed from
    source, and the install-from-source has very little insight into
    what<br>
    =A0 you might have installed from the package management system.=A0 O=
nce
    you venture into "install from source" territory, you're<br>
    =A0 basically doing the same tasks that a systems software developer
    would do, and the tools necessarily assume that you know<br>
    =A0 how to take on that role.=A0 If you're doing a lot of this "back =
and
    forth" from various package repositories, the official repositories,<=
br>
    =A0 and source-based installs, you really need to be a "Linux Geek" i=
n
    order not to create the "tangle" that you've created for yourself.<br=
>
    <br>
    <br>
    <blockquote
cite=3D"mid:CALNMZ8WtYdpxN_-g2AO_3hqWRORJ3f0Vf81qdPFf2QJgFFAP=3Dg@mail.gm=
ail.com"
      type=3D"cite">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>Thanks &amp; Regards,</div>
        <div>Brendan.</div>
        <div>=A0</div>
        <div>=A0</div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Apr 21, 2021 at 1:1=
4
          AM C=E9dric Hannotier via USRP-users &lt;<a
            moz-do-not-send=3D"true"
            href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.e=
ttus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
Hi
          Brendan,<br>
          <br>
          On 21/04/21 00:01, Brendan Horsfield wrote:<br>
          &gt;&gt; I do not get this part. What do you mean by
          "reinstalled"?<br>
          &gt;&gt; Did you installed GNU Radio from source or from
          Ubuntu Software?<br>
          &gt;&gt; If you download the source, build and install it
          (following GNU Radio<br>
          &gt;&gt; wiki),<br>
          &gt;&gt; then you cannot install it using Ubuntu Software (or
          apt) afterwards.<br>
          &gt;&gt; It is one or the other, not both.<br>
          &gt; <br>
          &gt; Hmm.=A0 I have been assuming all this time that GNU Radio
          Companion is an<br>
          &gt; optional GUI front end for GNU Radio, which must be
          installed separately.<br>
          &gt; <br>
          &gt; In my case, I definitely installed GNU Radio from
          source.=A0 However, when<br>
          &gt; that was finished, I then went into Ubuntu Software and
          installed GNU Radio<br>
          &gt; Companion, which placed an icon on my toolbar (which is
          how I launch the<br>
          &gt; application).=A0 I am guessing this was the wrong thing to
          do?<br>
          <br>
          Yep, wrong way.<br>
          gnuradio-companion is provided by gnuradio. It is not
          separated.<br>
          Most of the time,<br>
          doing "from source" installs everything under /usr/local/,<br>
          while "from binaries" installs everything under /usr/.<br>
          If you install both, you end up with 2 versions.<br>
          Best case scenario is one is masking the other.<br>
          Worst case scenario is clash between the two.<br>
          <br>
          &gt; FYI -- If I open a terminal and type
          "gnuradio-companion", the GUI never<br>
          &gt; launches, and all I get is the following error message:<br=
>
          &gt; <br>
          &gt; $ gnuradio-companion<br>
          &gt; &lt;&lt;&lt; Welcome to GNU Radio Companion 3.9.0.0
          &gt;&gt;&gt;<br>
          &gt; <br>
          &gt; Block paths:<br>
          &gt; /usr/local/share/gnuradio/grc/blocks<br>
          &gt; <br>
          &gt; Loading:<br>
          &gt;
          "/home/anyone/Documents/Brendan/GNU-Radio/save_rx_samples_to_fi=
le.grc"<br>
          &gt; &gt;&gt;&gt; Converting from XML<br>
          &gt; /usr/lib/python3.6/importlib/_bootstrap.py:219:
          ImportWarning: can't<br>
          &gt; resolve package from __spec__ or __package__, falling
          back on __name__ and<br>
          &gt; __path__<br>
          &gt;=A0 =A0return f(*args, **kwds)<br>
          &gt; &gt;&gt;&gt; Done<br>
          &gt; <br>
          &gt; Loading:<br>
          &gt;
"/home/anyone/Documents/Brendan/GNU-Radio/spectrum_analyser_two_chan.grc"=
<br>
          &gt; &gt;&gt;&gt; Converting from XML<br>
          &gt; Segmentation fault (core dumped)<br>
          <br>
          I do not know why it segfaults.<br>
          If it does not solve by itself after solving the other parts,<b=
r>
          you could try GNU Radio 3.8 or ask on GNU Radio ML.<br>
          <br>
          &gt; To answer your other questions:<br>
          &gt; <br>
          &gt; If I type "/sbin/ldconfig -p | grep -F libuhd", here is
          what I get:<br>
          &gt; libuhd.so.4.0.0 (libc6,x86-64) =3D&gt;
          /usr/local/lib/libuhd.so.4.0.0<br>
          &gt; libuhd.so.3.15.0 (libc6,x86-64) =3D&gt;<br>
          &gt; /usr/lib/x86_64-linux-gnu/libuhd.so.3.15.0<br>
          &gt; libuhd.so.003.010.003 (libc6,x86-64) =3D&gt;<br>
          &gt; /usr/lib/x86_64-linux-gnu/libuhd.so.003.010.003<br>
          &gt; libuhd.so (libc6,x86-64) =3D&gt; /usr/local/lib/libuhd.so<=
br>
          &gt; <br>
          &gt; Finally, when I type dpkg -S "(libuhd.so.003.010.003<br>
          &gt; "/usr/lib/x86_64-linux-gnu")", I get the response<br>
          &gt; dpkg-query: no path found matching pattern
          *(libuhd.so.003.010.003<br>
          &gt; /usr/lib/x86_64-linux-gnu)*<br>
          <br>
          Sorry if I was not clear, use:<br>
          dpkg -S "libuhd.so.003.010.003"<br>
          <br>
          or:<br>
          dpkg -S "$(basename
          "/usr/lib/x86_64-linux-gnu/libuhd.so.003.010.003")"<br>
          <br>
          I do not feed the fullpath to "dpkg -S" because with the /usr/
          merge,<br>
          dpkg can be confused.<br>
          <br>
          Could you do the same for libuhd.so.3.15.0?<br>
          <br>
          Regards<br>
          -- <br>
          <br>
          C=E9dric Hannotier<br>
          _______________________________________________<br>
          USRP-users mailing list -- <a moz-do-not-send=3D"true"
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a moz-do-not-send=3D"true"
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
        </blockquote>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap=3D"">_______________________________________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------080602060503010408010906--

--===============3634506228907991140==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3634506228907991140==--
