Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B106528A091
	for <lists+usrp-users@lfdr.de>; Sat, 10 Oct 2020 15:42:12 +0200 (CEST)
Received: from [::1] (port=42536 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kRF8T-0005hN-I8; Sat, 10 Oct 2020 09:42:09 -0400
Received: from mail-lj1-f179.google.com ([209.85.208.179]:45741)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <sam.reiter8@gmail.com>)
 id 1kRF8Q-0005by-0C
 for usrp-users@lists.ettus.com; Sat, 10 Oct 2020 09:42:06 -0400
Received: by mail-lj1-f179.google.com with SMTP id a4so12283895lji.12
 for <usrp-users@lists.ettus.com>; Sat, 10 Oct 2020 06:41:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=n4QPRnTGD8eCThPw2wEZ9MKYzQJSygYS39bCTHhbeFs=;
 b=mhzueuKvKF2gmPMlBz8cbEDDVkAY2h/85Z7/Ys0pUij8rWcMENTQyr0xcE/Iwia/4k
 ijCSNvdFY7j1HcOnDUynOCaDItwNUBKRSl9NM78ywBtHf+61DxwpEg8x4Jh9GuxGbX93
 UhU3v4+EkE2kjXP+W0rGjcUAtpW29zFkXKmjC5yaBBucO7n5rymguNtjufn9lgo5aR01
 bo3pgeXY+Es+NnyAqn2rph5N/rzYVee1fO31PASQxT4D8J1aQBWD5E6C3mKVcODoHz8G
 WE5E/rowM1200wHC4ghXPTewFZ/RistudL5s6xjpUnZ7yZy6HQiAs/MxxGt5ukfxTp1q
 ZPgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=n4QPRnTGD8eCThPw2wEZ9MKYzQJSygYS39bCTHhbeFs=;
 b=hTKLZpboNCsibbXoKulmTgjz3hC8zPSkt35YkEw7eqY3WIWPFXbFmIH3xtrWmsbkAu
 pLYy1KszgigySeKqeYf3fvASjK6RxTraVrQtqpOZ8UuM0BBCW/m46hkKaSyI5XOTtEew
 Mr4KMOAMsHl9MDXAT7i6mE3XnHjbVjkKwSa7oO1Ajmlza+NBwNzMZ3qrtL/uOYfW7smI
 no07OWdVrBkt1o158TLtjz9j7b6lZcnL+ShHmtN5+9W0fmxb7Y1r1Qoc+6m68Ai9tXNo
 viXhbWbpafKi5PeD/xIhCANJgJyapKqcSQXggY8RYl1QGhvXUctBtx24/OCBcFA2LQbg
 CT7Q==
X-Gm-Message-State: AOAM530AJ98g3wuMdx5RQCb0Iummtc6yP/lofr7oZS/lZ7I2svc4axSV
 jKJQjTMCMlacdfJRj14/deCfv2XhZmVn0CDTwuo=
X-Google-Smtp-Source: ABdhPJyH+EWvXyQ1UTHbN6vWEdUAN3+SpKKFWWVs1GP4eZt6zL9yQvzn42R+PHxp+wjRLnHFa/NsyObS3d9tuStbxrw=
X-Received: by 2002:a2e:86d2:: with SMTP id n18mr2082211ljj.271.1602337284498; 
 Sat, 10 Oct 2020 06:41:24 -0700 (PDT)
MIME-Version: 1.0
References: <977DB5BC614A438B9066262CBAEDBC75@PC1> <5F7DF8FA.707@gmail.com>
 <1316B17C73CD4E78A29C851758B9424F@PC1> <5F7F603B.3040102@gmail.com>
 <8BDDB039BE74418FA519715D5BB4062B@PC1> <5F7F6B9B.708@gmail.com>
 <6249823C72E244DD9001466CBCA8DA74@PC1>
 <CADBWrHj=QU-+f_KOKWji8UGSKmWOMVC1KY+KneyRM4A6cox4ig@mail.gmail.com>
 <E81BD8070DEC40989C2B48A6071FC4E0@PC1>
In-Reply-To: <E81BD8070DEC40989C2B48A6071FC4E0@PC1>
Date: Sat, 10 Oct 2020 08:41:13 -0500
Message-ID: <CADBWrHg1_yssvB_EUqV-Le1mcfH_-7tUC-bdk0-6TC_5p-y=yQ@mail.gmail.com>
To: "David Taylor (manx.net)" <drtaylor@manx.net>
Subject: Re: [USRP-users] B210 USRP object creation
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
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============3277999514902043809=="
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

--===============3277999514902043809==
Content-Type: multipart/alternative; boundary="000000000000a7283905b151387a"

--000000000000a7283905b151387a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Actually, I think you just need to configure and reload your udev rules as
noted in this KB under =E2=80=9Cconfiguring USB=E2=80=9D:

https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain=
_(UHD_and_GNU_Radio)_on_Linux#Configuring_USB


-Sam

On Sat, Oct 10, 2020 at 3:20 AM David Taylor (manx.net) <drtaylor@manx.net>
wrote:

>
>
>
>
>
>
>
>
> Sam,
>
>
>
>
>
> Thanks for your input.
>
>
> In my rather foolhardy attempt at obtaining a UHD device handle in my GRC
>
> code, I used UHD b2xx_fx3_utils to alter the USB pid value on my B210.
>
>
> The App note [2] (page 10/14) is slightly conflicting in the specificatio=
n
>
> of the B2xx pid values, giving two value options. Having a genuine NI
> part, I
>
> tried 0x7814.!
>
>
>
>
>
> uhd_find_devices fails with =E2=80=9CNo UHD Devices
>
> Found=E2=80=9D
>
>
>
>
>
> however
>
>
> ./b2xx_fx3_utils =E2=80=93init-device =E2=80=93write-vid 0x2500
>
> =E2=80=93write-pid 0x7814
>
>
> responds with
>
>
> Device opened (VID=3D0x2500, PID=3D0x7814)
>
>
> B2xx detected...Failed to communicate with the device!
>
>
> ...
>
>
> and UHD 3.15.0 response
>
>
> [ERROR [USB] USB open failed: insufficient permissions.
>
>
> See the application notes for your device.
>
>
>
>
>
> Perhaps a very cautious patch to the programmer code might help as a
>
> workaround?
>
>
> I will take a look.
>
>
>
>
>
> Best regards,
>
>
> David Taylor
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
> *From:* Sam
>
> Reiter
>
>
> *Sent:* Friday, October 9, 2020 10:01 PM
>
>
> *To:* David Taylor (manx.net)
>
>
> *Cc:* Marcus D. Leech ; usrp-users (usrp-users@lists.ettus.com)
>
>
>
> *Subject:* Re: [USRP-users] B210 USRP object
>
> creation
>
>
>
>
>
>
>
> David,
>
>
>
>
> To clarify, you used "write-vid" and "write-pid" arguments with UHD
>
> b2xx_fx3_utils  [1] to convert your NI-2901 to a B210 using the VID and
> PID
>
> values found in the "About the Motherboard and Daughtercard EEPROM on USR=
P
>
> Devices" KB [2]. Correct? And after changing these values, you are no
> longer
>
> able to reach the device using uhd_find_devices? Does the behavior change
> if you
>
> feed in arguments for the unit's serial number? e.g. uhd_find_devices
> --args
>
> serial=3D<xxxxx>
>
>
>
>
>
> If memory serves, I'd expect you to still be able to find the device with
>
> uhd_find_devices irrespective of the programmed VID and PID. However,
> those
>
> values are necessary for basically anything else as they're used to
> determine
>
> the FPGA image that is loaded onto the unit at runtime.
>
>
>
>
>
> [1]
> https://github.com/EttusResearch/uhd/blob/master/host/utils/b2xx_fx3_util=
s.cpp
>
>
> [2]
> https://kb.ettus.com/About_the_Motherboard_and_Daughtercard_EEPROM_on_USR=
P_Devices#USB_VID.2FPID
>
>
>
>
>
>
>
> On Fri, Oct 9, 2020 at 10:09 AM David Taylor (manx.net) via USRP-users
>
> <usrp-users@lists.ettus.com> wrote:
>
>
>
>>
>>
>>
>>
>>
>>
>>
>> Marcus,
>>
>>
>>
>>
>>
>> Thanks again.
>>
>>
>>
>>
>>
>> I am using the GRC as a test-bed for writing gr-code as the flow-graph
>>
>> method promotes well defined partitioning of the signal processing
>> functions,
>>
>> including of course the UHD interface.
>>
>>
>>
>>
>>
>> The project which I may have mentioned previously is Direct Sequence
>>
>> Spread Spectrum based and GRC C++ OOT blocks have been developed. These
>>
>> generate PRN sequences for transmission and then acquire and track the
>> carrier
>>
>> and PRN code phases in a modular receiver.
>>
>>
>> Much of the concept development can therefore be done using the GRC
>>
>> stand-alone or using the USRP in RF loopback with a simple BPSK
>>
>> modulator/demodulator pair.
>>
>>
>>
>>
>>
>> I am aware of the GRC scheduler shortcomings particularly in terms of
>>
>> throughput timing stability, however for now, some form of primitive
>> access to
>>
>> the UHD hardware is required for external timing event signalling throug=
h
>> the
>>
>> GPIO.
>>
>>
>>
>>
>>
>> I will have look at some of Balint Seeber=E2=80=99s old code and run som=
e of the
>>
>> UHD test code as suggested.
>>
>>
>>
>>
>>
>> Finally to add to my woes, the B210 is no longer =E2=80=9Cfound=E2=80=9D=
 after my vid and
>>
>> pid experiment.
>>
>>
>> USB finds the device with the vid and pid as written, but it can no
>>
>> longer be accessed through UHD application. I have tried carefully
>> editing the
>>
>> uhd-usrp.rules file to comply with the new pid value, but without
>>
>> success.
>>
>>
>> Perhaps a cautionary warning should be added to the EEPROM on USRP
>>
>> devices note!
>>
>>
>>
>>
>>
>> Regards,
>>
>>
>> David
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> *From:* Marcus D. Leech via
>>
>> USRP-users
>>
>>
>> *Sent:* Thursday, October 8, 2020 8:42 PM
>>
>>
>> *To:* usrp-users@lists.ettus.com
>>
>>
>> *Subject:* Re: [USRP-users] B210 USRP object
>>
>> creation
>>
>>
>>
>>
>>
>>
>>
>> On 10/08/2020 03:33 PM, David Taylor (manx.net) via USRP-users wrote:
>>
>>
>>
>>
>>
>>
>>
>>
>> Point taken. - I didn=E2=80=99t actually check the original default valu=
es of
>>
>> the VID and PID, but they were reset according to the table provided, so
>>
>> that they could be tested as arguments in the make statement below.
>>
>>
>> =E2=80=9CAbout the Motherboard and Daughtercard EEPROM on USRP Devices (=
5th
>>
>> August 2020)=E2=80=9D
>>
>>
>>
>>
>>
>> The aim is to be able to manipulate some GPIO bits in the block work
>>
>> function and to align events using the 1PPS input.
>>
>>
>>
>>
>>
>> Regards,
>>
>>
>> David GD4FMB
>>
>>
>>
>>
>> Ok, so presumably you're using Gnu
>>
>> Radio, since you're talking about "block work functions".
>>
>> So this issue
>>
>> straddles the two universes--UHD/USRP and Gnu Radio.
>>
>> I'd encourage you
>>
>> to use the UHD test tools to confirm sanity of your setup and then move
>> on to
>>
>> a stupid-simple flow-graph with standard
>>   blocks.  Once THAT
>>
>> works, then one can think about grabbing the usrp source/sink "object"
>> and
>>
>> being able to use it in your own
>>   processing "block".
>>
>> There used to be a way to do this even within GRC but I fear that it was
>> a
>>
>> custom block (perhaps from the old
>>   gr-balint set of blocks) that
>>
>> would allow you to grab an object handle and pass it as a variable into
>> your
>>
>> own functions.
>>
>> It's something I've wanted to do myself from time to
>>
>> time.   Of course if you're coding in "naked" GR, without using GRC,
>>
>> it's easy.
>>   But GRC uses a "data flow" model, and is less
>>
>> "procedural", so it gives an added layer of abstraction that makes it
>>
>> difficult to do
>>   what you want to do.   The gr-uhd module
>>
>> provides GPIO functions:
>>
>>
>> https://www.gnuradio.org/doc/doxygen-v3.7.9.1/classgr_1_1uhd_1_1usrp__bl=
ock.html#ab09502e1c8c43a546616b9a998f137f1
>>
>> But
>>
>> they aren't exposed in any meaningful way into GRC that I know of.
>>
>> I'll
>>
>> note that in GR3.9, there is support for something called "code snippets=
"
>>
>> which would let you "dip down into the lower layers" without
>>   having
>>
>> to post-facto edit generated Python code.
>>
>>
>>
>>
>> ------------------------------
>>
>>
>> _______________________________________________
>> USRP-users mailing
>>
>> list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>> _______________________________________________
>> USRP-users
>>
>> mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>
>
>

--000000000000a7283905b151387a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Actually, I think you just need to configure and reload y=
our udev rules as noted in this KB under =E2=80=9Cconfiguring USB=E2=80=9D:=
</div><div dir=3D"auto"><br></div><div dir=3D"auto"><div><a href=3D"https:/=
/kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_a=
nd_GNU_Radio)_on_Linux#Configuring_USB">https://kb.ettus.com/Building_and_I=
nstalling_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux#Confi=
guring_USB</a></div><br></div><div dir=3D"auto"><br></div><div dir=3D"auto"=
>-Sam</div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Sat, Oct 10, 2020 at 3:20 AM David Taylor (<a href=3D"http://m=
anx.net">manx.net</a>) &lt;<a href=3D"mailto:drtaylor@manx.net">drtaylor@ma=
nx.net</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;paddi=
ng-left:1ex;border-left-color:rgb(204,204,204)"><br><br><div dir=3D"ltr"><b=
r><br><div dir=3D"ltr"><br><br><div style=3D"font-size:12pt;font-family:Cal=
ibri;color:rgb(0,0,0)"><br><br><div style=3D"font-family:Calibri">Sam,</div=
><br><br><div style=3D"font-family:Calibri">=C2=A0</div><br><br><div style=
=3D"font-family:Calibri">Thanks for your input.</div><br><br><div style=3D"=
font-family:Calibri">In my rather foolhardy attempt at obtaining a UHD devi=
ce handle in my GRC <br><br>code, I used UHD b2xx_fx3_utils to alter the US=
B pid value on my B210.</div><br><br><div style=3D"font-family:Calibri">The=
 App note [2] (page 10/14) is slightly conflicting in the specification <br=
><br>of the B2xx pid values, giving two value options. Having a genuine NI =
part, I <br><br>tried 0x7814.!</div><br><br><div style=3D"font-family:Calib=
ri">=C2=A0</div><br><br><div style=3D"font-family:Calibri"><font style=3D"f=
ont-family:Calibri;color:rgb(0,0,255)">uhd_find_devices</font> fails with =
=E2=80=9CNo UHD Devices <br><br>Found=E2=80=9D</div><br><br><div style=3D"f=
ont-family:Calibri">=C2=A0</div><br><br><div style=3D"font-family:Calibri">=
however</div><br><br><div style=3D"font-family:Calibri"><font style=3D"font=
-family:Calibri;color:rgb(0,0,255)">./b2xx_fx3_utils =E2=80=93init-device =
=E2=80=93write-vid 0x2500 <br><br>=E2=80=93write-pid 0x7814</font></div><br=
><br><div style=3D"font-family:Calibri">responds with</div><br><br><div sty=
le=3D"font-family:Calibri">Device opened (VID=3D0x2500, PID=3D0x7814)</div>=
<br><br><div style=3D"font-family:Calibri">B2xx detected...Failed to commun=
icate with the device!</div><br><br><div style=3D"font-family:Calibri">...<=
/div><br><br><div style=3D"font-family:Calibri">and UHD 3.15.0 response</di=
v><br><br><div style=3D"font-family:Calibri">[ERROR [USB] USB open failed: =
insufficient permissions.</div><br><br><div style=3D"font-family:Calibri">S=
ee the application notes for your device.</div><br><br><div style=3D"font-f=
amily:Calibri">=C2=A0</div><br><br><div style=3D"font-family:Calibri">Perha=
ps a very cautious patch to the programmer code might help as a <br><br>wor=
karound?</div><br><br><div style=3D"font-family:Calibri">I will take a look=
.</div><br><br><div style=3D"font-family:Calibri">=C2=A0</div><br><br><div =
style=3D"font-family:Calibri">Best regards,</div><br><br><div style=3D"font=
-family:Calibri">David Taylor</div></div></div></div><div dir=3D"ltr"><div =
dir=3D"ltr"><div style=3D"font-size:12pt;font-family:Calibri;color:rgb(0,0,=
0)"><br><br><div style=3D"font-family:Calibri">=C2=A0</div><br><br><div sty=
le=3D"font-family:Calibri">=C2=A0</div><br><br><div style=3D"font-size:smal=
l;text-decoration:none;font-family:Calibri;font-weight:normal;font-style:no=
rmal;display:inline;color:rgb(0,0,0)"><br><br><div style=3D"font-style:norm=
al;font-variant-caps:normal;font-weight:normal;font-stretch:normal;font-siz=
e:10pt;line-height:normal;font-family:tahoma"><br><br><div style=3D"font-fa=
mily:tahoma">=C2=A0</div><br><br><div style=3D"font-family:tahoma;backgroun=
d-color:rgb(245,245,245)"><br><br><div style=3D"font-family:tahoma"><b styl=
e=3D"font-family:tahoma">From:</b> <a title=3D"sam.reiter8@gmail.com" style=
=3D"font-family:tahoma">Sam <br><br>Reiter</a> </div><br><br><div style=3D"=
font-family:tahoma"><b style=3D"font-family:tahoma">Sent:</b> Friday, Octob=
er 9, 2020 10:01 PM</div><br><br><div style=3D"font-family:tahoma"><b style=
=3D"font-family:tahoma">To:</b> <a title=3D"drtaylor@manx.net" style=3D"fon=
t-family:tahoma">David Taylor (manx.net)</a> </div><br><br><div style=3D"fo=
nt-family:tahoma"><b style=3D"font-family:tahoma">Cc:</b> <a title=3D"patch=
vonbraun@gmail.com" style=3D"font-family:tahoma">Marcus D. Leech</a> ; <a t=
itle=3D"usrp-users@lists.ettus.com" style=3D"font-family:tahoma">usrp-users=
 (usrp-users@lists.ettus.com)</a> <br><br></div><br><br><div style=3D"font-=
family:tahoma"><b style=3D"font-family:tahoma">Subject:</b> Re: [USRP-users=
] B210 USRP object <br><br>creation</div></div></div><br><br><div style=3D"=
font-family:Calibri">=C2=A0</div></div><br><br><div style=3D"font-size:smal=
l;text-decoration:none;font-family:Calibri;font-weight:normal;font-style:no=
rmal;display:inline;color:rgb(0,0,0)"><br><br><div dir=3D"ltr" style=3D"fon=
t-family:Calibri">David, <br><br><div style=3D"font-family:Calibri">=C2=A0<=
/div><br><br><div style=3D"font-family:Calibri">To clarify, you used &quot;=
write-vid&quot; and &quot;write-pid&quot; arguments with UHD <br><br>b2xx_f=
x3_utils=C2=A0 [1] to convert your NI-2901 to a B210 using the VID and PID =
<br><br>values found in the &quot;About the Motherboard and Daughtercard EE=
PROM on USRP <br><br>Devices&quot; KB [2]. Correct? And after changing thes=
e values, you are no longer <br><br>able to reach the device using uhd_find=
_devices? Does the behavior change if you <br><br>feed in arguments for the=
 unit&#39;s serial number? e.g. uhd_find_devices --args <br><br>serial=3D&l=
t;xxxxx&gt;</div><br><br><div style=3D"font-family:Calibri">=C2=A0</div><br=
><br><div style=3D"font-family:Calibri">If memory serves, I&#39;d expect yo=
u to still be able to find the device with <br><br>uhd_find_devices irrespe=
ctive of the programmed VID and PID. However, those <br><br>values are nece=
ssary for basically anything else as they&#39;re used to determine <br><br>=
the FPGA image that is loaded onto the unit at runtime.</div><br><br><div s=
tyle=3D"font-family:Calibri">=C2=A0</div><br><br><div style=3D"font-family:=
Calibri">[1] <a href=3D"https://github.com/EttusResearch/uhd/blob/master/ho=
st/utils/b2xx_fx3_utils.cpp" target=3D"_blank" style=3D"font-family:Calibri=
">https://github.com/EttusResearch/uhd/blob/master/host/utils/b2xx_fx3_util=
s.cpp</a></div><br><br><div style=3D"font-family:Calibri">[2] <a href=3D"ht=
tps://kb.ettus.com/About_the_Motherboard_and_Daughtercard_EEPROM_on_USRP_De=
vices#USB_VID.2FPID" target=3D"_blank" style=3D"font-family:Calibri">https:=
//kb.ettus.com/About_the_Motherboard_and_Daughtercard_EEPROM_on_USRP_Device=
s#USB_VID.2FPID</a></div></div><br><br><div style=3D"font-family:Calibri">=
=C2=A0</div><br><br><div class=3D"gmail_quote" style=3D"font-family:Calibri=
"><br><br><div class=3D"gmail_attr" dir=3D"ltr" style=3D"font-family:Calibr=
i">On Fri, Oct 9, 2020 at 10:09 AM David Taylor (<a href=3D"http://manx.net=
" target=3D"_blank" style=3D"font-family:Calibri">manx.net</a>) via USRP-us=
ers <br><br>&lt;<a style=3D"font-family:Calibri">usrp-users@lists.ettus.com=
</a>&gt; wrote:<br></div><br><br><blockquote class=3D"gmail_quote" style=3D=
"padding-left:1ex;border-left-width:1px;border-left-style:solid;margin:0px =
0px 0px 0.8ex;font-family:Calibri;border-left-color:rgb(204,204,204)"><br><=
br>  <div dir=3D"ltr" bgcolor=3D"#ffffff" style=3D"font-family:Calibri"><br=
><br>  <div dir=3D"ltr" style=3D"font-family:Calibri"><br><br>  <div style=
=3D"font-size:12pt;font-family:calibri;color:rgb(0,0,0)"><br><br>  <div sty=
le=3D"font-family:calibri">Marcus,</div><br><br>  <div style=3D"font-family=
:calibri">=C2=A0</div><br><br>  <div style=3D"font-family:calibri">Thanks a=
gain.</div><br><br>  <div style=3D"font-family:calibri">=C2=A0</div><br><br=
>  <div style=3D"font-family:calibri">I am using the GRC as a test-bed for =
writing gr-code as the flow-graph <br><br>  method promotes well defined pa=
rtitioning of the signal processing functions, <br><br>  including of cours=
e the UHD interface.</div><br><br>  <div style=3D"font-family:calibri">=C2=
=A0</div><br><br>  <div style=3D"font-family:calibri">The project which I m=
ay have mentioned previously is Direct Sequence <br><br>  Spread Spectrum b=
ased and GRC C++ OOT blocks have been developed. These <br><br>  generate P=
RN sequences for transmission and then acquire and track the carrier <br><b=
r>  and PRN code phases in a modular receiver.</div><br><br>  <div style=3D=
"font-family:calibri">Much of the concept development can therefore be done=
 using the GRC <br><br>  stand-alone or using the USRP in RF loopback with =
a simple BPSK <br><br>  modulator/demodulator pair.</div><br><br>  <div sty=
le=3D"font-family:calibri">=C2=A0</div><br><br>  <div style=3D"font-family:=
calibri">I am aware of the GRC scheduler shortcomings particularly in terms=
 of <br><br>  throughput timing stability, however for now, some form of pr=
imitive access to <br><br>  the UHD hardware is required for external timin=
g event signalling through the <br><br>  GPIO.</div><br><br>  <div style=3D=
"font-family:calibri">=C2=A0</div><br><br>  <div style=3D"font-family:calib=
ri">I will have look at some of Balint Seeber=E2=80=99s old code and run so=
me of the <br><br>  UHD test code as suggested.</div><br><br>  <div style=
=3D"font-family:calibri">=C2=A0</div><br><br>  <div style=3D"font-family:ca=
libri">Finally to add to my woes, the B210 is no longer =E2=80=9Cfound=E2=
=80=9D after my vid and <br><br>  pid experiment.</div><br><br>  <div style=
=3D"font-family:calibri">USB finds the device with the vid and pid as writt=
en, but it can no <br><br>  longer be accessed through UHD application. I h=
ave tried carefully editing the <br><br>  uhd-usrp.rules file to comply wit=
h the new pid value, but without <br><br>  success.</div><br><br>  <div sty=
le=3D"font-family:calibri">Perhaps a cautionary warning should be added to =
the EEPROM on USRP <br><br>  devices note!</div><br><br>  <div style=3D"fon=
t-family:calibri">=C2=A0</div><br><br>  <div style=3D"font-family:calibri">=
Regards,</div><br><br>  <div style=3D"font-family:calibri">David</div><br><=
br>  <div style=3D"font-family:calibri">=C2=A0</div><br><br>  <div style=3D=
"font-family:calibri">=C2=A0</div><br><br>  <div style=3D"font-size:small;t=
ext-decoration:none;font-family:calibri;font-weight:normal;font-style:norma=
l;display:inline;color:rgb(0,0,0)"><br><br>  <div style=3D"font-style:norma=
l;font-variant-caps:normal;font-weight:normal;font-stretch:normal;font-size=
:10pt;line-height:normal;font-family:tahoma"><br><br>  <div style=3D"font-f=
amily:tahoma">=C2=A0</div><br><br>  <div style=3D"font-family:tahoma;backgr=
ound-color:rgb(245,245,245)"><br><br>  <div style=3D"font-family:tahoma"><b=
 style=3D"font-family:tahoma">From:</b> <a title=3D"usrp-users@lists.ettus.=
com" style=3D"font-family:tahoma">Marcus D. Leech via <br><br>  USRP-users<=
/a> </div><br><br>  <div style=3D"font-family:tahoma"><b style=3D"font-fami=
ly:tahoma">Sent:</b> Thursday, October 8, 2020 8:42 PM</div><br><br>  <div =
style=3D"font-family:tahoma"><b style=3D"font-family:tahoma">To:</b> <a tit=
le=3D"usrp-users@lists.ettus.com" style=3D"font-family:tahoma">usrp-users@l=
ists.ettus.com</a> </div><br><br>  <div style=3D"font-family:tahoma"><b sty=
le=3D"font-family:tahoma">Subject:</b> Re: [USRP-users] B210 USRP object <b=
r><br>  creation</div></div></div><br><br>  <div style=3D"font-family:calib=
ri">=C2=A0</div></div><br><br>  <div style=3D"font-size:small;text-decorati=
on:none;font-family:calibri;font-weight:normal;font-style:normal;display:in=
line;color:rgb(0,0,0)"><br><br>  <div style=3D"font-family:calibri">On 10/0=
8/2020 03:33 PM, David Taylor (<a href=3D"http://manx.net" target=3D"_blank=
" style=3D"font-family:calibri">manx.net</a>) via USRP-users wrote:<br></di=
v><br><br>  <blockquote type=3D"cite" style=3D"font-family:calibri"><br><br=
>    <div dir=3D"ltr" style=3D"font-family:calibri"><br><br>    <div style=
=3D"font-size:12pt;font-family:calibri;color:rgb(0,0,0)"><br><br>    <div s=
tyle=3D"font-family:calibri">Point taken. - I didn=E2=80=99t actually check=
 the original default values of <br><br>    the VID and PID, but they were =
reset according to the table provided, so <br><br>    that they could be te=
sted as arguments in the make statement below.</div><br><br>    <div style=
=3D"font-family:calibri">=E2=80=9CAbout the Motherboard and Daughtercard EE=
PROM on USRP Devices (5th <br><br>    August 2020)=E2=80=9D</div><br><br>  =
  <div style=3D"font-family:calibri">=C2=A0</div><br><br>    <div style=3D"=
font-family:calibri">The aim is to be able to manipulate some GPIO bits in =
the block work <br><br>    function and to align events using the 1PPS inpu=
t.</div><br><br>    <div style=3D"font-family:calibri">=C2=A0</div><br><br>=
    <div style=3D"font-family:calibri">Regards,</div><br><br>    <div style=
=3D"font-family:calibri">David GD4FMB</div><br><br>    <div style=3D"font-f=
amily:calibri">=C2=A0</div></div></div></blockquote>Ok, so presumably you&#=
39;re using Gnu <br><br>  Radio, since you&#39;re talking about &quot;block=
 work functions&quot;.<br><br>So this issue <br><br>  straddles the two uni=
verses--UHD/USRP and Gnu Radio.<br><br>I&#39;d encourage you <br><br>  to u=
se the UHD test tools to confirm sanity of your setup and then move on to <=
br><br>  a stupid-simple flow-graph with standard<br>=C2=A0 blocks.=C2=A0 O=
nce THAT <br><br>  works, then one can think about grabbing the usrp source=
/sink &quot;object&quot; and <br><br>  being able to use it in your own<br>=
=C2=A0 processing &quot;block&quot;.=C2=A0=C2=A0 <br><br>  There used to be=
 a way to do this even within GRC but I fear that it was a <br><br>  custom=
 block (perhaps from the old<br>=C2=A0 gr-balint set of blocks) that <br><b=
r>  would allow you to grab an object handle and pass it as a variable into=
 your <br><br>  own functions.<br><br>It&#39;s something I&#39;ve wanted to=
 do myself from time to <br><br>  time.=C2=A0=C2=A0 Of course if you&#39;re=
 coding in &quot;naked&quot; GR, without using GRC, <br><br>  it&#39;s easy=
.<br>=C2=A0 But GRC uses a &quot;data flow&quot; model, and is less <br><br=
>  &quot;procedural&quot;, so it gives an added layer of abstraction that m=
akes it <br><br>  difficult to do<br>=C2=A0 what you want to do.=C2=A0=C2=
=A0 The gr-uhd module <br><br>  provides GPIO functions:<br><br><a href=3D"=
https://www.gnuradio.org/doc/doxygen-v3.7.9.1/classgr_1_1uhd_1_1usrp__block=
.html#ab09502e1c8c43a546616b9a998f137f1" target=3D"_blank" style=3D"font-fa=
mily:calibri">https://www.gnuradio.org/doc/doxygen-v3.7.9.1/classgr_1_1uhd_=
1_1usrp__block.html#ab09502e1c8c43a546616b9a998f137f1</a><br><br>But <br><b=
r>  they aren&#39;t exposed in any meaningful way into GRC that I know of.<=
br><br>I&#39;ll <br><br>  note that in GR3.9, there is support for somethin=
g called &quot;code snippets&quot; <br><br>  which would let you &quot;dip =
down into the lower layers&quot; without<br>=C2=A0 having <br><br>  to post=
-facto edit generated Python code.<br><br><br><br><br>  <hr style=3D"font-f=
amily:calibri"><br><br>  _______________________________________________<br=
>USRP-users mailing <br><br>  list<br><a style=3D"font-family:calibri">USRP=
-users@lists.ettus.com</a><br><a href=3D"http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com" target=3D"_blank" style=3D"font-family:ca=
libri">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</=
a><br></div></div></div></div>_____________________________________________=
__<br>USRP-users <br><br>  mailing list<br><a style=3D"font-family:Calibri"=
>USRP-users@lists.ettus.com</a><br><a href=3D"http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank"=
 style=3D"font-family:Calibri">http://lists.ettus.com/mailman/listinfo/usrp=
-users_lists.ettus.com</a><br></blockquote></div></div></div></div></div><b=
r><br></blockquote></div></div>

--000000000000a7283905b151387a--


--===============3277999514902043809==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3277999514902043809==--

