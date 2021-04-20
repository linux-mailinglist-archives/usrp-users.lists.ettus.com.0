Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 49CC7365206
	for <lists+usrp-users@lfdr.de>; Tue, 20 Apr 2021 08:03:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3AE293845EF
	for <lists+usrp-users@lfdr.de>; Tue, 20 Apr 2021 02:03:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=vectalabs-com.20150623.gappssmtp.com header.i=@vectalabs-com.20150623.gappssmtp.com header.b="C1P5W74i";
	dkim-atps=neutral
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com [209.85.222.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 1BB96384261
	for <USRP-users@lists.ettus.com>; Tue, 20 Apr 2021 02:02:16 -0400 (EDT)
Received: by mail-ua1-f49.google.com with SMTP id x9so4121747uao.3
        for <USRP-users@lists.ettus.com>; Mon, 19 Apr 2021 23:02:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vectalabs-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DfayfBuNmFk1CtjPz3CC7By2fRWBFICNLu0W8dk+6uU=;
        b=C1P5W74i08iqP7knB+JNzGWXvMPeyxvGzohta7Bbdr8cL8Dl40IY0rBjUJ22b3zBHa
         3Yz/caAKPSiSqzk/rIBGDU96OsXuqTAKLpK05AdfM1lUezneULpTHNGBSGKPYNAol658
         FzKq8DqSNzknfQp+Y5ybuYKqwhuRaLUztJ4y2VrPcv2HyoQDUhc/Q2TIWL1uubweHgFf
         SeBvyX9eLC0rebhbe/NG7qocyztm7i0pbRZVA9+rLbmwVimGYKY7VMayfMl7UR1X8z52
         hKQfkGW8cK6yUayB8D3eDY5lwZMvVFtI+URc2aOQ4jEIClLSkTsQ6SHORIX2cF/uPqtJ
         qKrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DfayfBuNmFk1CtjPz3CC7By2fRWBFICNLu0W8dk+6uU=;
        b=mqILRLBrLgmsQnbvl88VMesQWwxw5n7MPeBWtLzFsxyxp1Pvm56jdRRdwfzczL6ZIO
         SxnouEgrxsalyCY25TMY5MCoT9XK47W59RVEsZtATmXlUZPCXS3aUsV5/gbFUph+8bVe
         aHZ+DV/HqA9eZ+q+amICuspafrjmDrOEapsTeynejnZoij93cszUa6kit1sYXQTmch9B
         fTQzr3/rx0nckWyu9I5OGpOCeqkyFLrc8M44q/6EnALR+cJOE/Z+7InJJYMY2A+u/ECs
         IUXPVyRAolSJKLlBxaiy/PJ2VYp8z+Wlor4Wyxg7EqABvPsCa+xhYw0YueJ/Q7BUAXg9
         YZhw==
X-Gm-Message-State: AOAM530ox11z2UFiIF74PDoWdaFov4odbv/9c34/nJF7ikx+QXZUQD0m
	HWwm/xHfJBcLMkofsBM5QW38ORJaQ8Lm5Ui10g2M4w==
X-Google-Smtp-Source: ABdhPJwCG86NpeqA1OtyQdD7rMFWnTlOyppE4KeM9mVrwUr7mSqbgW3vNLwomww93GYLvqQqWHGBDIR3d1VRKan48Nk=
X-Received: by 2002:ab0:153:: with SMTP id 77mr4133746uak.59.1618898536500;
 Mon, 19 Apr 2021 23:02:16 -0700 (PDT)
MIME-Version: 1.0
References: <8BD61B25-5BDD-4864-8C30-B1C133F513F2@gmail.com>
 <C7A28B54-D688-46B6-ACB1-A5739D949AFE@gmail.com> <CALNMZ8WiRaZbvALNifxMPBpPPYuZ1-eFRHZ0A-8E=A2swFYgsQ@mail.gmail.com>
 <607E0593.1040807@gmail.com> <CALNMZ8U3m_oj3T67VqZYOV53J3sCb=7=NCat2E0TnMvEB1QEbg@mail.gmail.com>
 <607E0A1C.5050608@gmail.com>
In-Reply-To: <607E0A1C.5050608@gmail.com>
From: Brendan Horsfield <brendan.horsfield@vectalabs.com>
Date: Tue, 20 Apr 2021 16:02:05 +1000
Message-ID: <CALNMZ8V_1+PC-GdxwFY6iDT6WqGpOqzWbwN=XJQ4EjY-yfcfVg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 53GLHIKJS7OCRBLV7Q4UDJBLWFUEG645
X-Message-ID-Hash: 53GLHIKJS7OCRBLV7Q4UDJBLWFUEG645
X-MailFrom: brendan.horsfield@vectalabs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD dual-install issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/53GLHIKJS7OCRBLV7Q4UDJBLWFUEG645/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4384145686939112390=="

--===============4384145686939112390==
Content-Type: multipart/alternative; boundary="000000000000321dbb05c061305a"

--000000000000321dbb05c061305a
Content-Type: text/plain; charset="UTF-8"

Hi Marcus,

Progress update:  Still stuck, but perhaps with some new clues as to what
is going wrong.

I have reinstalled both UHD and GNU Radio:  the former from source, the
latter from binaries as recommended on the GNU Radio website.  I then
performed the following checks:

   - uhd_find_devices & uhd_usrp_probe:  OK
   - PYTHONPATH manually set to /usr/local/lib/python3/dist-packages
   - benchmark_rate & benchmark_rate.py:  OK
   - In Python 3:  from gnuradio import uhd.  RESULT:  linux; GNU C++
   version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown*  (WRONG!
   SHOULD BE UHD v4.0.0.0)*
   - In Python 3:  uhd.__file__.
    RESULT:  /usr/lib/python3/dist-packages/gnuradio/uhd/__init__.py
   - From command prompt:  gnuradio-config-info -v.  RESULT:  error while
   loading shared libraries: libgnuradio-runtime.so.3.8.3git: cannot open
   shared object file: No such file or directory  *(NOT A GOOD SIGN)*

*Observation 1:  *It really looks like the GNU Radio installer is ignoring
my existing, installed UHD driver, and adding its own, older UHD drivers to
my system.  See the following console output for details:

The following NEW packages will be installed:
  gnuradio gnuradio-dev libcodec2-0.7 libgnuradio-analog libgnuradio-audio
libgnuradio-blocks libgnuradio-channels libgnuradio-digital libgnuradio-dtv
libgnuradio-fec libgnuradio-fft libgnuradio-filter libgnuradio-pmt
libgnuradio-qtgui libgnuradio-runtime libgnuradio-trellis libgnuradio-uhd
libgnuradio-video-sdl libgnuradio-vocoder libgnuradio-wavelet
libgnuradio-zeromq libgsm1-dev libqwt-qt5-6 librtlsdr0 *libuhd003.010.003
libuhd3.15.0* libvolk2-bin libvolk2-dev libvolk2.0 libvolk2.2
python3-networkx python3-zmq rtl-sdr uhd-host
0 to upgrade, 34 to newly install, 0 to remove and 20 not to upgrade.
Need to get 2,310 kB/24.9 MB of archives.
After this operation, 178 MB of additional disk space will be used.
Do you want to continue? [Y/n] y

*Observation 2:  *Post-installation, GNU Radio is clearly looking in
the wrong place for the FPGA images.  When I open GNU Radio and try to
connect to a UHD block, it is unable to locate the FPGA image for the
block.  It then instructs me to run
*/usr/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py
*(which incidentally is completely the wrong location for that utility):

UHD Warning:
    EnvironmentError: IOError: Could not find path for image:
usrp_b200_fw.hex
    Using images directory: <no images directory located>
    Set the environment variable 'UHD_IMAGES_DIR' appropriately or follow
the below instructions to download the images package.
    Please run:
     "/usr/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py"

I have tried setting the environment variable UHD_IMAGES_DIR in my .bashrc
file as shown below, but it makes no difference:

   - export UHD_IMAGES_DIR=/usr/local/share/uhd/images

Any suggestions?  Should I try installing GNU Radio from source?  Or should
I perhaps direct my questions to the GNU Radio mailing list?

Thanks,
Brendan.





On Tue, Apr 20, 2021 at 8:54 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 04/19/2021 06:51 PM, Brendan Horsfield wrote:
>
> OK, I didn't realise that GNU Radio needed the Python UHD module to be
> installed.  I deliberately excluded the Python API from my UHD driver build
> in order to try out Christian's custom Python API.
>
> I will remove the custom API today, and install a "stock" UHD driver with
> the Ettus Python API.  Then I will give the GNU Radio installation another
> try.
>
> Thanks,
> Brendan.
>
> Gah.  Sorry.  Brain fart.
>
> Carry on.
>
> so you need to replicate what GR does for UHD in 3.8.  In GR3.7:
>
> from gnuradio import uhd
> uhd.__file__
>
> And see where it's coming from (I don't off the top of my head know what
> GR 3.8 idiom is).
>
>
>
>
>
>
> On Tue, Apr 20, 2021 at 8:35 AM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 04/19/2021 06:21 PM, Brendan Horsfield wrote:
>>
>> Importing uhd in Python 3:
>> /usr/local/lib/python3.6/dist-packages/uhd-1.1.0-py3.6-linux-x86_64.egg/
>> uhd.cpython-36m-x86_64-linux-gnu.so
>>
>> (Note that this is an alternative Python UHD module written by Christian
>> Hahn, which I have been evaluating for the last few days.)
>>
>> Trying to import uhd in Python 2 (which I never use) returns an error:
>>
>> Traceback (most recent call last):
>>   File "<stdin>", line 1, in <module>
>>   File "/usr/local/lib/python2.7/dist-packages/uhd/__init__.py", line 10,
>> in <module>
>>   File "/usr/local/lib/python2.7/dist-packages/uhd/types.py", line 10, in
>> <module>
>>     # "__iter__" and "next" attributes instead.
>> ImportError: cannot import name libpyuhd
>>
>> Brendan.
>>
>> Given that gr-uhd wants a module called "uhd" to exist, and GR uses
>> gr-uhd, i'm not sure what will happen with the
>>   name-space pollution that will result.
>>
>>
>>
>

--000000000000321dbb05c061305a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Marcus,<div><br></div><div>Progress update:=C2=A0 Still=
 stuck, but perhaps with some new clues as to what is going wrong.</div><di=
v><br></div><div>I have reinstalled both UHD and GNU Radio:=C2=A0 the forme=
r from source, the latter from binaries as recommended on the GNU Radio web=
site.=C2=A0 I then performed the following checks:</div><div><ul><li>uhd_fi=
nd_devices &amp; uhd_usrp_probe:=C2=A0 OK</li><li>PYTHONPATH manually set t=
o /usr/local/lib/python3/dist-packages</li><li>benchmark_rate &amp; benchma=
rk_rate.py:=C2=A0 OK</li><li>In Python 3:=C2=A0 from gnuradio import uhd.=
=C2=A0 RESULT:=C2=A0 linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.01=
0.003.000-0-unknown<b>=C2=A0 (WRONG! SHOULD BE UHD v4.0.0.0)</b></li><li>In=
 Python 3:=C2=A0 uhd.__file__.=C2=A0 =C2=A0RESULT:=C2=A0=C2=A0/usr/lib/pyth=
on3/dist-packages/gnuradio/uhd/__init__.py=C2=A0=C2=A0</li><li>From command=
 prompt:=C2=A0 gnuradio-config-info -v.=C2=A0 RESULT:=C2=A0=C2=A0error whil=
e loading shared libraries: libgnuradio-runtime.so.3.8.3git: cannot open sh=
ared object file: No such file or directory=C2=A0 <b>(NOT A GOOD SIGN)</b><=
/li></ul></div><div><b>Observation 1:=C2=A0 </b>It really looks like the GN=
U Radio installer is ignoring my existing, installed UHD driver, and adding=
 its own, older UHD drivers to my system.=C2=A0 See the following console o=
utput for details:<br></div><div><br></div><div><font face=3D"monospace">Th=
e following NEW packages will be installed:<br>=C2=A0 gnuradio gnuradio-dev=
 libcodec2-0.7 libgnuradio-analog libgnuradio-audio libgnuradio-blocks libg=
nuradio-channels libgnuradio-digital libgnuradio-dtv libgnuradio-fec libgnu=
radio-fft libgnuradio-filter=C2=A0libgnuradio-pmt libgnuradio-qtgui libgnur=
adio-runtime libgnuradio-trellis libgnuradio-uhd libgnuradio-video-sdl libg=
nuradio-vocoder libgnuradio-wavelet libgnuradio-zeromq libgsm1-dev libqwt-q=
t5-6 librtlsdr0=C2=A0<b><u>libuhd003.010.003</u> <u>libuhd3.15.0</u></b> li=
bvolk2-bin libvolk2-dev libvolk2.0 libvolk2.2 python3-networkx python3-zmq =
rtl-sdr uhd-host<br>0 to upgrade, 34 to newly install, 0 to remove and 20 n=
ot to upgrade.<br>Need to get 2,310 kB/24.9 MB of archives.<br>After this o=
peration, 178 MB of additional disk space will be used.<br>Do you want to c=
ontinue? [Y/n] y</font><br></div><div><br></div><div><b>Observation 2:=C2=
=A0 </b>Post-installation,=C2=A0GNU Radio is clearly looking in the=C2=A0wr=
ong place for the FPGA images.=C2=A0=C2=A0When I open GNU Radio and try to =
connect to a UHD block, it is unable to locate=C2=A0the FPGA image for the =
block.=C2=A0 It then instructs me to run=C2=A0<b>/usr/lib/x86_64-linux-gnu/=
uhd/utils/uhd_images_downloader.py </b>(which incidentally is completely th=
e wrong location for that utility):=C2=A0</div><div><br></div><div><font fa=
ce=3D"monospace">UHD Warning:<br>=C2=A0 =C2=A0 EnvironmentError: IOError: C=
ould not find path for image: usrp_b200_fw.hex<br>=C2=A0 =C2=A0 Using image=
s directory: &lt;no images directory located&gt;<br>=C2=A0 =C2=A0 Set the e=
nvironment variable &#39;UHD_IMAGES_DIR&#39; appropriately or follow the be=
low instructions to download the images package.<br>=C2=A0 =C2=A0 Please ru=
n:<br>=C2=A0 =C2=A0 =C2=A0&quot;/usr/lib/x86_64-linux-gnu/uhd/utils/uhd_ima=
ges_downloader.py&quot;</font><br></div><div><br></div><div>I have tried se=
tting the environment variable UHD_IMAGES_DIR in my .bashrc file as shown b=
elow, but it makes no difference:</div><div><ul><li><span style=3D"font-fam=
ily:monospace">export UHD_IMAGES_DIR=3D/usr/local/share/uhd/images</span></=
li></ul></div><div>Any suggestions?=C2=A0 Should I try installing GNU Radio=
 from source?=C2=A0 Or should I perhaps direct my questions to the GNU Radi=
o mailing list?</div><div><br></div><div>Thanks,</div><div>Brendan.</div><d=
iv><br></div><div><br></div><div>=C2=A0=C2=A0<br></div><div><br></div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tu=
e, Apr 20, 2021 at 8:54 AM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbr=
aun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 04/19/2021 06:51 PM, Brendan
      Horsfield wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">OK, I didn&#39;t realise that GNU Radio needed the
        Python UHD module to be installed.=C2=A0 I deliberately excluded th=
e
        Python API from my UHD driver build in order to try out
        Christian&#39;s custom Python API.
        <div><br>
        </div>
        <div>I will remove the custom API today, and install a &quot;stock&=
quot;
          UHD driver with the Ettus Python API.=C2=A0 Then I will give the
          GNU Radio installation another try.</div>
        <div><br>
        </div>
        <div>Thanks,</div>
        <div>Brendan.</div>
      </div>
    </blockquote>
    Gah.=C2=A0 Sorry.=C2=A0 Brain fart.<br>
    <br>
    Carry on.<br>
    <br>
    so you need to replicate what GR does for UHD in 3.8.=C2=A0 In GR3.7:<b=
r>
    <br>
    from gnuradio import uhd<br>
    uhd.__file__<br>
    <br>
    And see where it&#39;s coming from (I don&#39;t off the top of my head =
know
    what GR 3.8 idiom is).<br>
    <br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div><br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 20, 2021 at 8:35
          AM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"=
 target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor=3D"#FFFFFF">
            <div>On 04/19/2021 06:21 PM, Brendan Horsfield wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">Importing uhd in Python 3:=C2=A0
                /usr/local/lib/python3.6/dist-packages/uhd-1.1.0-py3.6-linu=
x-x86_64.egg/<a href=3D"http://uhd.cpython-36m-x86_64-linux-gnu.so" target=
=3D"_blank">uhd.cpython-36m-x86_64-linux-gnu.so</a>
                <div><br>
                </div>
                <div>(Note that this is an alternative Python UHD module
                  written by Christian Hahn, which I have been
                  evaluating for the last few days.)=C2=A0 =C2=A0</div>
                <div><br>
                </div>
                <div>Trying to import uhd in Python 2 (which I never
                  use) returns an error:</div>
                <div><br>
                </div>
                <div>Traceback (most recent call last):<br>
                  =C2=A0 File &quot;&lt;stdin&gt;&quot;, line 1, in &lt;mod=
ule&gt;<br>
                  =C2=A0 File
                  &quot;/usr/local/lib/python2.7/dist-packages/uhd/__init__=
.py&quot;,
                  line 10, in &lt;module&gt;<br>
                  =C2=A0 File
                  &quot;/usr/local/lib/python2.7/dist-packages/uhd/types.py=
&quot;,
                  line 10, in &lt;module&gt;<br>
                  =C2=A0 =C2=A0 # &quot;__iter__&quot; and &quot;next&quot;=
 attributes instead.<br>
                  ImportError: cannot import name libpyuhd<br>
                </div>
                <div><br>
                </div>
                <div>Brendan.</div>
                <br>
              </div>
            </blockquote>
            Given that gr-uhd wants a module called &quot;uhd&quot; to exis=
t, and
            GR uses gr-uhd, i&#39;m not sure what will happen with the<br>
            =C2=A0 name-space pollution that will result.<br>
            <br>
            <br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--000000000000321dbb05c061305a--

--===============4384145686939112390==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4384145686939112390==--
