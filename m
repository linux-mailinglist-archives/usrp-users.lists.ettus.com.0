Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 978AF7B054F
	for <lists+usrp-users@lfdr.de>; Wed, 27 Sep 2023 15:25:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 46166384FF3
	for <lists+usrp-users@lfdr.de>; Wed, 27 Sep 2023 09:25:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695821121; bh=B9P8H7hQvuYmKoJDL4SMPPPhVdZYZluH3Hd+ZJW7jz8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=FKcv/j8FNUcbNr9ms+bTzVzFi2WbfH1L1untlkZYuGcQgZpEIQwwBqhBPUMt61Zx9
	 enh2RDzmxnvXSDCSmhKd+tnhkdNst6XkjzZKK4HeulCrLmnZjp5+6wwukrqVozEIEf
	 lvKmgqXR9U3QkJ1HSLdCfj8uqc5+A7W7EJ1/hNRpLxJmVKcK0WmbwEGcYgZY0g95TX
	 bES/uYLFoH6nfP1UrxpAalpYyk3vto09kBugN2LGCdRggDMweLJAO/sGoIYOqsao85
	 aFTa/Bntkem9g3NrBbkR+Oeqp58L9a/PGrTMVruKD4JUAfIL/K16HJBXgoC4tdYnYb
	 +CkZIavnFCMCA==
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	by mm2.emwd.com (Postfix) with ESMTPS id CABA7384FD7
	for <usrp-users@lists.ettus.com>; Wed, 27 Sep 2023 09:25:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="cKnk4RoS";
	dkim-atps=neutral
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-40572aeb73cso79235265e9.3
        for <usrp-users@lists.ettus.com>; Wed, 27 Sep 2023 06:25:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1695821116; x=1696425916; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w4iv/0hWWOmem3WOV1G1kKB0eYZtV3iaoRBL2kG+iT0=;
        b=cKnk4RoSjxyxQg3CW7EJDXfIulUrRddkmMrqlUMwFiYIUHx6pN6sH3cGvDLsyak+FV
         4ZQQqjR7XiUCfYrJI+s1uX4Hw0fUFKAC15bsKcMcj9l3nJYf4M+pQjtENHrE402g2pek
         QA3BngEzzpztvaQhF6f5+HVNYlyJ8GVaggUqWj91nOWwXJZtf0avWLAFsvSoPXSUinla
         6bWppkCjwLlk0Km0LrSv15dPcAlqsNBv9oGgAmDPueg85GM0Sxz6hLCewiOqw0e9IpAv
         gKnDPGGaKAqrBuIBLsawvzGqHW6JtYA47maF4QXqtxcm2/p0ghgPxcl8rLF8j+yUSAbM
         x7hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695821116; x=1696425916;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=w4iv/0hWWOmem3WOV1G1kKB0eYZtV3iaoRBL2kG+iT0=;
        b=oGvx7CdPahV5MRjtTN70El4HfTGzorJAp0M6pdi3gCS2J3aInri57hR9Nb2o65xQe3
         TI4YUV4AHYjRT4riCOq9QmHSXwtY/uEsu2V4VvHKHiWauvW5vP2zvyQ3HTLtOeGxElmc
         kVPNM1kJSIOaUrlzkhCRE+C8io/Vpei19BwTCRXQ6RzZ+6t6SlVaUGrznM/YnasXez8J
         OCv1B8fKrllCAlJcYTWE+smeE/H+LaPG8iFXz4v5PzolaFI6tqAJ8CTBUzEf5LNQqOoq
         bvP6YQHPa821ZFhO1o6rnSOyFealzc1cACDaOfX9EIpZF5dYol6QODYko6iOwRvf+swR
         0SCg==
X-Gm-Message-State: AOJu0YwsIhOyge4Q7dZVB5kXeJE4LEAn5puBjuvIX6Y8ZzibsD+9/rFA
	+BbyCK4gTj1BlvULDwNzyjly1TYw27ZperQPEx0Zag==
X-Google-Smtp-Source: AGHT+IGWgSnhWkqcVvaIDwq99+E5fAHL+9qjnjWEDKN7V4cfr5Pe/7rW03rrzvwXkF+TorjjeGRDFQ==
X-Received: by 2002:a05:600c:22d1:b0:404:72fe:ed5c with SMTP id 17-20020a05600c22d100b0040472feed5cmr2054949wmg.29.1695821116368;
        Wed, 27 Sep 2023 06:25:16 -0700 (PDT)
Received: from ?IPV6:2001:9e8:3852:3700:10fc:1619:bea3:90d1? ([2001:9e8:3852:3700:10fc:1619:bea3:90d1])
        by smtp.gmail.com with ESMTPSA id q25-20020a7bce99000000b00405ee9dc69esm5257426wmj.18.2023.09.27.06.25.15
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Sep 2023 06:25:15 -0700 (PDT)
Content-Type: multipart/mixed; boundary="------------Qb4k9UGbbbpT1VMY5EOomRRk"
Message-ID: <195b1249-9fb1-2ac6-c424-6c9797806dde@ettus.com>
Date: Wed, 27 Sep 2023 15:25:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAErymBiwZv4-RmdGWZV=o1GO8Vn_9L-2yTqjwgtz1Fna3nyf8Q@mail.gmail.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <CAErymBiwZv4-RmdGWZV=o1GO8Vn_9L-2yTqjwgtz1Fna3nyf8Q@mail.gmail.com>
Message-ID-Hash: KYMNZOK5LD6FUHGG353WQ33AGPU2HJ6I
X-Message-ID-Hash: KYMNZOK5LD6FUHGG353WQ33AGPU2HJ6I
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Do I need package python3-uhd when I upgrade uhd?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KYMNZOK5LD6FUHGG353WQ33AGPU2HJ6I/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

This is a multi-part message in MIME format.
--------------Qb4k9UGbbbpT1VMY5EOomRRk
Content-Type: multipart/alternative;
 boundary="------------Lo1ePkz43e4Oq9xeH3Su6nxk"

--------------Lo1ePkz43e4Oq9xeH3Su6nxk
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi Achilleas,

 > I see one more package "python3-uhd". Do I also need this package [=E2=
=80=A6]?

No, *but* (I think you're doing this right, but for posteriority, I write=
 this. State as=20
of 2023-09-27, current UHD is 4.5, dear future reader.):

 > I usually install uhd from ettus binaries through the suggested method=
 sudo=20
add-apt-repository ppa:ettusresearch/uhd [=E2=80=A6]
 > I want to run gnuradio with USRPs and want to do gnuradio development=C2=
=A0as well (eg, OOT=20
modules etc)?

The gnuradio package you might have installed through apt install gnuradi=
o is built=20
against the Ubuntu (or debian) libuhd, not against the Ettus libuhd (whic=
h remains=20
installed; uhd-host, which includes things like the FPGA image downloader=
, however, gets=20
updated, so you can't get the right firmware images anymore for your GNU =
Radio-used=20
version of UHD).

So, you *must* uninstall `sudo apt-get remove gnuradio`, and rebuild GNU =
Radio to link=20
against Ettus version of the UHD packages.

Here's how I do that, to be able to continue using the gnuradio-dependent=
 Ubuntu (debian)=20
packages, as the resulting GNU Radio should be binary-compatible.

-------------------------------------------------------------------------=
-----------------

 1. Enable the Ubuntu (or debian) source repos
 2. Install the gnuradio package's build-dependencies
 3. Download the gnuradio package and rebuild it
 4. Install the freshly built package(s)
 5. Fix the version of the installed libgnuradio-uhd package, so an updat=
e from Ubuntu (or
    debian) doesn't replace your gnuradio package with one using the orig=
inal Ubuntu (or
    debian) UHD.

In detail, after you've set up the ettusresearch PPA:


        Enable the Ubuntu (or debian) source repos

Either using the software settings in your desktop environment=20
(settings->Software->checkmark on "Source Code"), or by

  * (Ubuntu, debian <=3D 11) editing /etc/apt/sources.list, add (uncommen=
t) the identical
    lines, starting with "deb-src" instead of "deb" below each "deb" line
  * (debian >=3D 12) editing /etc/apt/sources.list.d/debian.sources; add =
" deb-src" at the
    end of the lines starting with "Types: deb"

Run `sudo apt-get update` to make your system aware that it now knows how=
 to get source=20
code for packages.


        Install the gnuradio package's build-dependencies

 1. sudo apt-get build-dep -y gnuradio
 2. sudo apt-get install -y dpkg-dev


        Download the gnuradio package and rebuild it

No sudo required!

cd && mkdir gnuradio-pkg && cd gnuradio-pkg && apt-get source --build gnu=
radio

You're left with new .deb package files in ~/gnuradio-pkg.


        Install the freshly built package(s)

cd ~/gnuradio-pkg && sudo apt-get install -y ./*.deb


        Fix the version of the installed package

sudo apt-mark hold libgnuradio-uhd\*

-------------------------------------------------------------------------=
-----------------

PS: in case you wonder whether you could put the above in a Dockerfile an=
d just run it=20
every time you need an updated UHD to get your updated GNU Radio packages=
; sure:

 1. Save attached Dockerfile to empty directory; adjust the Ubuntu versio=
n and date in the
    first lines.
 2. Install podman (I prefer that) or docker (if using docker, simply rep=
lace "podman"
    with "docker" below)
 3. cd into that directory
 4. podman build -t ubuntu-VERSION-ettusresearch-gnuradio-dependencies .
 5. mkdir -p ~/data
 6. podman run --rm -v ~/data:/data:Z ettus-uhd-gnuradio-ubuntu-2204:late=
st sh -c "cd
    /data;DEBIAN_FRONTEND=3Dnoninteractive apt-get source --build gnuradi=
o"
 7. You should now have the packages in your ~/data

-------------------------------------------------------------------------=
-----------------
Cheers,
Marcus


On 27.09.23 01:56, Achilleas Anastasopoulos wrote:
> I usually install uhd from ettus binaries through the suggested method:
>
> sudo add-apt-repository ppa:ettusresearch/uhd
> sudo apt-get update
> sudo apt-get install libuhd-dev uhd-host
--------------Lo1ePkz43e4Oq9xeH3Su6nxk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hi Achilleas,</p>
    <p>&gt; I see one more package "python3-uhd". Do I also need this
      package [=E2=80=A6]?<br>
    </p>
    <p>No, <b>but</b> (I think you're doing this right, but for
      posteriority, I write this. State as of 2023-09-27, current UHD is
      4.5, dear future reader.):<br>
    </p>
    <p>&gt; I usually install uhd from ettus binaries through the
      suggested method sudo add-apt-repository ppa:ettusresearch/uhd [=E2=
=80=A6]<br>
      &gt; I want to run gnuradio with USRPs and want to do gnuradio
      development=C2=A0as well (eg, OOT modules etc)?</p>
    <p>The gnuradio package you might have installed through <font
        face=3D"monospace">apt install gnuradio</font> is built against
      the Ubuntu (or debian) libuhd, not against the Ettus libuhd (which
      remains installed; uhd-host, which includes things like the FPGA
      image downloader, however, gets updated, so you can't get the
      right firmware images anymore for your GNU Radio-used version of
      UHD).</p>
    <p>So, you <b>must</b> uninstall `sudo apt-get remove gnuradio`,
      and rebuild GNU Radio to link against Ettus version of the UHD
      packages.</p>
    <p>Here's how I do that, to be able to continue using the
      gnuradio-dependent Ubuntu (debian) packages, as the resulting GNU
      Radio should be binary-compatible.</p>
    <hr width=3D"100%" size=3D"2">
    <ol>
      <li>Enable the Ubuntu (or debian) source repos</li>
      <li>Install the gnuradio package's build-dependencies</li>
      <li>Download the gnuradio package and rebuild it</li>
      <li>Install the freshly built package(s)</li>
      <li>Fix the version of the installed libgnuradio-uhd package, so
        an update from Ubuntu (or debian) doesn't replace your gnuradio
        package with one using the original Ubuntu (or debian) UHD.</li>
    </ol>
    <p>In detail, after you've set up the ettusresearch PPA:<br>
    </p>
    <h4>Enable the Ubuntu (or debian) source repos<br>
    </h4>
    <p>Either using the software settings in your desktop environment
      (settings-&gt;Software-&gt;checkmark on "Source Code"), or by=C2=A0=
</p>
    <ul>
      <li>(Ubuntu, debian &lt;=3D 11) editing /etc/apt/sources.list, add
        (uncomment) the identical lines, starting with "deb-src" instead
        of "deb" below each "deb" line <br>
      </li>
      <li>(debian &gt;=3D 12) editing
        /etc/apt/sources.list.d/debian.sources; add " deb-src" at the
        end of the lines starting with "Types: deb"<br>
      </li>
    </ul>
    <p>Run `<font face=3D"monospace">sudo apt-get update</font>` to make
      your system aware that it now knows how to get source code for
      packages.<br>
    </p>
    <h4>Install the gnuradio package's build-dependencies</h4>
    <p></p>
    <ol>
      <li><font face=3D"monospace">sudo apt-get build-dep -y gnuradio</fo=
nt></li>
      <li><font face=3D"monospace">sudo apt-get install -y dpkg-dev <br>
        </font></li>
    </ol>
    <h4>Download the gnuradio package and rebuild it</h4>
    <p>No <font face=3D"monospace">sudo </font>required!<br>
    </p>
    <p><font face=3D"monospace">cd &amp;&amp; mkdir gnuradio-pkg
        &amp;&amp; cd gnuradio-pkg &amp;&amp; apt-get source --build
        gnuradio<br>
      </font></p>
    <p>You're left with new .deb package files in ~/gnuradio-pkg.</p>
    <h4>Install the freshly built package(s)</h4>
    <p><font face=3D"monospace">cd ~/gnuradio-pkg &amp;&amp; sudo apt-get
        install -y ./*.deb<br>
      </font></p>
    <h4>Fix the version of the installed package</h4>
    <p><font face=3D"monospace">sudo apt-mark hold libgnuradio-uhd\*<br>
      </font></p>
    <hr width=3D"100%" size=3D"2">
    <p>PS: in case you wonder whether you could put the above in a
      Dockerfile and just run it every time you need an updated UHD to
      get your updated GNU Radio packages; sure:</p>
    <ol>
      <li>Save attached Dockerfile to empty directory; adjust the Ubuntu
        version and date in the first lines.<br>
      </li>
      <li>Install podman (I prefer that) or docker (if using docker,
        simply replace "podman" with "docker" below)<br>
      </li>
      <li><font face=3D"monospace">cd</font> into that directory</li>
      <li><font face=3D"monospace">podman build -t
          ubuntu-VERSION-ettusresearch-gnuradio-dependencies .</font></li=
>
      <li><font face=3D"monospace">mkdir -p ~/data</font></li>
      <li><font face=3D"monospace">podman run --rm -v ~/<a class=3D"moz-t=
xt-link-freetext" href=3D"data:/data:Z">data:/data:Z</a>
          ettus-uhd-gnuradio-ubuntu-2204:latest sh -c "cd
          /data;DEBIAN_FRONTEND=3Dnoninteractive apt-get source --build
          gnuradio"</font></li>
      <li>You should now have the packages in your ~/data<font
          face=3D"monospace"><br>
        </font></li>
    </ol>
    <hr width=3D"100%" size=3D"2">Cheers,<br>
    Marcus
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 27.09.23 01:56, Achilleas
      Anastasopoulos wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAErymBiwZv4-RmdGWZV=3Do1GO8Vn_9L-2yTqjwgtz1Fna3nyf8Q@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">I usually install uhd from ettus binaries through
        the suggested method:
        <div><br>
        </div>
        <div>sudo add-apt-repository ppa:ettusresearch/uhd<br>
          sudo apt-get update<br>
          sudo apt-get install libuhd-dev uhd-host<br>
        </div>
      </div>
    </blockquote>
  </body>
</html>

--------------Lo1ePkz43e4Oq9xeH3Su6nxk--

--------------Qb4k9UGbbbpT1VMY5EOomRRk
Content-Type: text/plain; charset=UTF-8; name="Dockerfile"
Content-Disposition: attachment; filename="Dockerfile"
Content-Transfer-Encoding: base64

RlJPTSB1YnVudHU6MjIuMDQKTEFCRUwgbWFpbnRhaW5lcj0ibWFyY3VzLm11ZWxsZXJAZXR0
dXMuY29tIgoKIyBVcGRhdGluZyB0aGUgYmVsb3cgd2hlbiB5b3UgZG8gYSByZWJ1aWxkIHdp
bGwgbWFrZSB0aGUgaW1hZ2UgY29udGFpbiBhbGwgdGhlIHVwZGF0ZXMKRU5WIHNlY3VyaXR5
X3VwZGF0ZXNfYXNfb2YgMjAyMy0wOS0yNwoKIyBQcmVwYXJlIGRpc3RyaWJ1dGlvbiwgZW5h
YmxlIHNvdXJjZXMgcmVwb3MKUlVOIERFQklBTl9GUk9OVEVORD1ub25pbnRlcmFjdGl2ZSBh
cHQtZ2V0IHVwZGF0ZSAtcSBcCiAgICA7XAogICAgICBERUJJQU5fRlJPTlRFTkQ9bm9uaW50
ZXJhY3RpdmUgYXB0LWdldCAteSB1cGdyYWRlIFwKICAgICYmIFwKICAgICAgREVCSUFOX0ZS
T05URU5EPW5vbmludGVyYWN0aXZlIGFwdC1nZXQgaW5zdGFsbCAtcXkgXAogICAgICAgIHNv
ZnR3YXJlLXByb3BlcnRpZXMtY29tbW9uIFwKICAgICYmIFwKICAgICAgQ09ERU5BTUU9JChz
ZWQgLW4gJ3MvVkVSU0lPTl9DT0RFTkFNRT1cKC4qXCkkL1wxL3AnIDwvZXRjL29zLXJlbGVh
c2UpIFwKICAgICAgICBzZWQgLW4gInMvZGViXFwoIC4qJHtDT0RFTkFNRX0uKlxcKSQvZGVi
LXNyY1xcMS9wIiBcCiAgICAgICAgPCAvZXRjL2FwdC9zb3VyY2VzLmxpc3QgXAogICAgICAg
ID4gL2V0Yy9hcHQvc291cmNlcy5saXN0LmQvNTAtJHtDT0RFTkFNRX0tc291cmNlcy5saXN0
IFwKICAgICYmIFwKICAgICAgYWRkLWFwdC1yZXBvc2l0b3J5IHBwYTpldHR1c3Jlc2VhcmNo
L3VoZCBcCiAgICAmJiBcCiAgICAgIGFwdC1nZXQgY2xlYW4KCiMgSW5zdGFsbCBFdHR1cyBV
SEQgdmVyc2lvbiwgYW5kIHRoZSBlc3NlbnRpYWwgdG9vbCBmb3IgYnVpbGRpbmcgcGFja2Fn
ZXMKIyBJbnN0YWxsIGdudXJhZGlvJ3MgYnVpbGQtZGVwZW5kZW5jaWVzClJVTiBERUJJQU5f
RlJPTlRFTkQ9bm9uaW50ZXJhY3RpdmUgYXB0LWdldCB1cGRhdGUgLXEgXAogICAgO1wKICAg
IERFQklBTl9GUk9OVEVORD1ub25pbnRlcmFjdGl2ZSBhcHQtZ2V0IGluc3RhbGwgLXF5IC0t
bm8taW5zdGFsbC1yZWNvbW1lbmRzIFwKICAgICAgICBsaWJ1aGQtZGV2IFwKICAgICAgICB1
aGQtaG9zdCBcCiAgICAgICAgZHBrZy1kZXYgXAogICAgJiYgXAogICAgICBERUJJQU5fRlJP
TlRFTkQ9bm9uaW50ZXJhY3RpdmUgYXB0LWdldCBidWlsZC1kZXAgLXF5IC0tbm8taW5zdGFs
bC1yZWNvbW1lbmRzIFwKICAgICAgICBnbnVyYWRpbyBcCiAgICAmJiBcCiAgICAgIGFwdC1n
ZXQgY2xlYW4KCg==

--------------Qb4k9UGbbbpT1VMY5EOomRRk
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--------------Qb4k9UGbbbpT1VMY5EOomRRk--
