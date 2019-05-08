Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB1118048
	for <lists+usrp-users@lfdr.de>; Wed,  8 May 2019 21:14:13 +0200 (CEST)
Received: from [::1] (port=32826 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOS16-0007Af-0K; Wed, 08 May 2019 15:14:12 -0400
Received: from atl4mhob21.registeredsite.com ([209.17.115.115]:36216)
 by mm2.emwd.com with esmtp (Exim 4.91)
 (envelope-from <k5so@k5so.com>) id 1hOS0X-0006fX-Va
 for usrp-users@lists.ettus.com; Wed, 08 May 2019 15:14:08 -0400
Received: from mailpod.hostingplatform.com
 (atl4qobmail01pod3.registeredsite.com [10.30.77.67])
 by atl4mhob21.registeredsite.com (8.14.4/8.14.4) with ESMTP id x48JCtDK132177
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL)
 for <usrp-users@lists.ettus.com>; Wed, 8 May 2019 15:12:55 -0400
Received: (qmail 15443 invoked by uid 0); 8 May 2019 19:12:55 -0000
X-TCPREMOTEIP: 192.206.203.10
X-Authenticated-UID: k5so@k5so.com
Received: from unknown (HELO ?192.168.1.76?) (k5so@k5so.com@192.206.203.10)
 by 0 with ESMTPA; 8 May 2019 19:12:55 -0000
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
In-Reply-To: <23E8A4CB-45AD-4A55-90E8-FA1EB050E257@k5so.com>
Date: Wed, 8 May 2019 13:12:53 -0600
Message-Id: <5A51119A-1193-45E7-84F3-44722F65A9C8@k5so.com>
References: <556BBE2D-2BA6-40A3-BFF5-F5FA2351DB06@k5so.com>
 <BL0PR12MB2340E831A1782ED0958D6DBAAF320@BL0PR12MB2340.namprd12.prod.outlook.com>
 <84C6BD1A-2901-4FFC-834C-55B481EB7045@k5so.com> <5CD30B61.8080700@gmail.com>
 <CAGVTi8UrRix7wt_BxCN8rNBvFGD8d4Uz8Td7hWHGpg+G_=quAw@mail.gmail.com>
 <5CD3121D.6040508@gmail.com> <EC7DA97C-5541-4037-AB6B-26AE1712B50D@k5so.com>
 <CAGVTi8UfMw4Ff2Sm=4ybBMv-GEnfYrfUWuEzrX36QCJFo7T7bA@mail.gmail.com>
 <23E8A4CB-45AD-4A55-90E8-FA1EB050E257@k5so.com>
To: Joe Martin <k5so@k5so.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Bringing an elderly N210 to life by loading
 current firmware/fpga images
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
From: Joe Martin via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Joe Martin <k5so@k5so.com>
Cc: USRP-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3854916041571864512=="
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


--===============3854916041571864512==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_4C598178-F526-4812-9E49-575791EE162F"


--Apple-Mail=_4C598178-F526-4812-9E49-575791EE162F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

FYI, I have created a =E2=80=9Cusrp_n210_r2_fpga.bit" file by adding the =
additional header to the usrp_n210_r2_fpga.bin file, renamed it, and =
loaded it into the N210=E2=80=99s FPGA.  Will report back on the ability =
to install an older version of UHD than the current version to see if =
the elderly N210 can be made to come alive again using rev2 =
firmware/fpga images. =20

Joe

> On May 8, 2019, at 12:11 PM, Joe Martin via USRP-users =
<usrp-users@lists.ettus.com> wrote:
>=20
> Thanks, Robin, I=E2=80=99ll certainly try that! =20
>=20
> As I mentioned, we are amenable to running this particular N210 with =
an old version of UHD to gain some functionality. =20
>=20
>> On May 8, 2019, at 12:07 PM, Robin Coxe <robin.coxe@ettus.com =
<mailto:robin.coxe@ettus.com>> wrote:
>>=20
>> You might want to try this:  =
https://forums.xilinx.com/t5/Configuration/Is-it-possible-to-convert-bin-f=
ile-to-bit-file-or-mcs-file/td-p/870351 =
<https://forums.xilinx.com/t5/Configuration/Is-it-possible-to-convert-bin-=
file-to-bit-file-or-mcs-file/td-p/870351>   but YMMV.
>>=20
>> -Robin
>>=20
>>=20
>> On Wed, May 8, 2019 at 11:04 AM Joe Martin <k5so@k5so.com =
<mailto:k5so@k5so.com>> wrote:
>> Very good, Marcus.  I would greatly appreciate it.
>>=20
>> If we can get our hands on the =E2=80=9Cusrp_n210_r2_fpga.bit=E2=80=9D =
from anywhere we could load it and install an ancient UHD version that =
has the associated .bin files for rev2 and run with that setup to have =
at least a minimal amount of utility from the N210, albeit not all the =
niceties and functionality of a modern UHD version. =20
>>=20
>> Thanks Jason, Marcus, and Robin for the information.  Much =
appreciated.  At least we know now what we need for this N210 and what =
to expect from it in terms of performance if we ever find the .bit file =
too. =20
>>=20
>> Best regards to all,=20
>>=20
>> Joe
>>=20
>>> On May 8, 2019, at 11:30 AM, Marcus D. Leech via USRP-users =
<usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>>>=20
>>> On 05/08/2019 01:24 PM, Robin Coxe wrote:
>>>> Hi Joe and Jason.  So, I took a walk down Memory Lane and =
discovered that the N210 was first released by Ettus Research in =
November 2010, which was about 6 months after we were acquired by =
National Instruments.
>>>> It is a true statement that v2 of the hardware is quite geriatric =
and no longer supported in modern versions of UHD.   However, all hope =
is not lost.
>>>>=20
>>>> There *is* support for N200/N210 in the oldest version of UHD that =
is still downloadable on files.ettus.com <http://files.ettus.com/>, UHD =
v.3.8.0.0.   The FPGA images are in this zip file:
>>>> =
http://files.ettus.com/binaries/images/uhd-images_003.008.000-18-g6647f8cc=
.zip =
<http://files.ettus.com/binaries/images/uhd-images_003.008.000-18-g6647f8c=
c.zip>
>>>>=20
>>>> We unfortunately don't have a v2 in the office to confirm that it =
still works, but you might want to take a look. =20
>>>>=20
>>>> -Robin
>>> I'm going to go through some old disk drives on mine from "back in =
the day", and see if I have the r2 .bit files.
>>>=20
>>> That can't happen until the weekend, however...
>>>=20
>>>=20
>>>>=20
>>>>=20
>>>>=20
>>>> On Wed, May 8, 2019 at 10:02 AM Marcus D. Leech via USRP-users =
<usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>>>> On 05/08/2019 12:56 PM, Joe Martin via USRP-users wrote:
>>>>> Wow, okay; that=E2=80=99s disheartening.  Thanks much for the =
info, Jason.  Nope, the Rev3 bit file doesn=E2=80=99t work; tried it.  =
I=E2=80=99ll see if the support email adr can be of use. =20
>>>>>=20
>>>>> Joe
>>>>>=20
>>>> There was a hardware change, as I recall, between Rev2 and Rev3 =
involving the inputs to the ADCs.
>>>>=20
>>>>=20
>>>>>> On May 8, 2019, at 10:44 AM, Jason Matusiak =
<jason@gardettoengineering.com <mailto:jason@gardettoengineering.com>> =
wrote:
>>>>>>=20
>>>>>> Joe, I think you might be SOL.  If you take a look at this thread =
from me last year, I had no luck: =
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-April/056=
223.html =
<http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-April/05=
6223.html>
>>>>>>=20
>>>>>>=20
>>>>>> Also, when I pinged Ettus directly, here is some info I got back =
from them (from two different emails in the thread):
>>>>>> "we've been having some trouble tracking down Rev2 bitfiles, =
because no
>>>>>> one here was around when that was built. If you're trying to =
unbrick
>>>>>> them, Rev3 bitfiles might be OK, but I'm not completely sure.
>>>>>>=20
>>>>>> support@ettus.com <mailto:support@ettus.com> might know more by =
know.
>>>>>> really sorry, but those Rev2s are just so old. And all the people =
from
>>>>>> that era seem to be gone. Sorry, can't help you with those =
Rev2s."
>>>>>>=20
>>>>>> From: USRP-users <usrp-users-bounces@lists.ettus.com =
<mailto:usrp-users-bounces@lists.ettus.com>> on behalf of Joe Martin via =
USRP-users <usrp-users@lists.ettus.com =
<mailto:usrp-users@lists.ettus.com>>
>>>>>> Sent: Wednesday, May 8, 2019 11:55 AM
>>>>>> To: Joe Martin via USRP-users
>>>>>> Subject: [USRP-users] Bringing an elderly N210 to life by loading =
current firmware/fpga images
>>>>>> =20
>>>>>> I am trying to bring an elderly N210 r2.0 with unknown history to =
life by loading current UHD firmware and fpga images from a 1Gigabit =
ethernet connection on an AMD 2950X, 3.4GHz, 2TB SSD PC running Ubuntu =
18.04 with UHD 3.14.0.HEAD-0-gd20a7ae2 software but having difficulty.=20=

>>>>>>=20
>>>>>> Following instructions in =E2=80=9CUSRP Hardware Driver and USRP =
Manual: USRP2 and N2x0 Series=E2=80=9D:
>>>>>>=20
>>>>>> My initial action was to load the =E2=80=9Cusrp_n210_r4_fpga.bit" =
file into the N210 xc3sd3400a FPGA using a Xilinx Platform Cable USB II =
JTAG programming cable from a Win7 PC running Xilinx ISE iMPACT, which =
reported =E2=80=9CProgram Succeeded=E2=80=9D for the action.  Ethernet =
LEDs on the N210 are variously lighted showing activity on the =
connection port.
>>>>>>=20
>>>>>> With the N210 connected to the Linux PC 1Gbps ethernet port, =
issuing the following commands result in the responses shown in the =
screenshot image below:=20
>>>>>>=20
>>>>>> <Screenshot from 2019-05-08 08-46-52.png>
>>>>>>=20
>>>>>> My (naive!) interpretation of the above responses is that the =
FPGA may not actually have been programmed with the *.bit code even =
though iMPACT reported success in programming.  Can someone assist me in =
understanding whether my interpretation is correct or not and, most =
importantly, suggest what I might try next to bring this N210 to life? =20=

>>>>>>=20
>>>>>> The =E2=80=9CPlease run:=E2=80=9D suggestion results in the =
=E2=80=9CReceived invalid reply 32 from device=E2=80=9D error.  It seems =
no matter what I try the =E2=80=9CReceived invalid reply 32 from =
device=E2=80=9D RuntimeError is reported back when I try to load any new =
firmware/FPGA images. =20
>>>>>>=20
>>>>>> Thanks!
>>>>>>=20
>>>>>> Joe
>>>>>=20
>>>>>=20
>>>>>=20
>>>>> _______________________________________________
>>>>> USRP-users mailing list
>>>>> USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com =
<http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>
>>>>=20
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com =
<http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>
>>>=20
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com =
<http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>
>>=20
>=20
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--Apple-Mail=_4C598178-F526-4812-9E49-575791EE162F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D"">FYI, =
I have created a =E2=80=9Cusrp_n210_r2_fpga.bit" file by adding the =
additional header to the usrp_n210_r2_fpga.bin file, renamed it, and =
loaded it into the N210=E2=80=99s FPGA. &nbsp;Will report back on the =
ability to install an older version of UHD than the current version to =
see if the elderly N210 can be made to come alive again using rev2 =
firmware/fpga images. &nbsp;<div class=3D""><br class=3D""></div><div =
class=3D"">Joe<br class=3D""><div><br class=3D""><blockquote type=3D"cite"=
 class=3D""><div class=3D"">On May 8, 2019, at 12:11 PM, Joe Martin via =
USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" =
class=3D"">usrp-users@lists.ettus.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><meta =
http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8" =
class=3D""><div style=3D"word-wrap: break-word; -webkit-nbsp-mode: =
space; line-break: after-white-space;" class=3D"">Thanks, Robin, I=E2=80=99=
ll certainly try that! &nbsp;<div class=3D""><br class=3D""></div><div =
class=3D"">As I mentioned, we are amenable to running this particular =
N210 with an old version of UHD to gain some functionality. &nbsp;<br =
class=3D""><div class=3D""><br class=3D""><blockquote type=3D"cite" =
class=3D""><div class=3D"">On May 8, 2019, at 12:07 PM, Robin Coxe =
&lt;<a href=3D"mailto:robin.coxe@ettus.com" =
class=3D"">robin.coxe@ettus.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D"">You might want to try this:&nbsp;

<a =
href=3D"https://forums.xilinx.com/t5/Configuration/Is-it-possible-to-conve=
rt-bin-file-to-bit-file-or-mcs-file/td-p/870351" =
class=3D"">https://forums.xilinx.com/t5/Configuration/Is-it-possible-to-co=
nvert-bin-file-to-bit-file-or-mcs-file/td-p/870351</a>&nbsp; &nbsp;but =
YMMV.<div class=3D""><br class=3D""></div><div class=3D"">-Robin</div><div=
 class=3D""><br class=3D""></div></div><br class=3D""><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May =
8, 2019 at 11:04 AM Joe Martin &lt;<a href=3D"mailto:k5so@k5so.com" =
class=3D"">k5so@k5so.com</a>&gt; wrote:<br class=3D""></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div style=3D"overflow-wrap: =
break-word;" class=3D"">Very good, Marcus.&nbsp; I would greatly =
appreciate it.<div class=3D""><br class=3D""></div><div class=3D"">If we =
can get our hands on the =E2=80=9Cusrp_n210_r2_fpga.bit=E2=80=9D from =
anywhere we could load it and install an ancient UHD version that has =
the associated .bin files for rev2 and run with that setup to have at =
least a minimal amount of utility from the N210, albeit not all the =
niceties and functionality of a modern UHD version. &nbsp;<div =
class=3D""><br class=3D""></div><div class=3D"">Thanks Jason, Marcus, =
and Robin for the information.&nbsp; Much appreciated.&nbsp; At least we =
know now what we need for this N210 and what to expect from it in terms =
of performance if we ever find the .bit file too. &nbsp;</div><div =
class=3D""><br class=3D""></div><div class=3D"">Best regards to =
all,&nbsp;</div><div class=3D""><br class=3D""></div><div =
class=3D"">Joe<br class=3D""><div class=3D""><br class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D"">On May 8, 2019, at 11:30 AM, =
Marcus D. Leech via USRP-users &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" =
class=3D"">usrp-users@lists.ettus.com</a>&gt; wrote:</div><br =
class=3D"gmail-m_4409046354640671939Apple-interchange-newline"><div =
class=3D"">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" class=3D"">
    <div class=3D"gmail-m_4409046354640671939moz-cite-prefix">On =
05/08/2019 01:24 PM, Robin Coxe
      wrote:<br class=3D"">
    </div>
    <blockquote type=3D"cite" class=3D"">
      <div dir=3D"ltr" class=3D"">
        <div dir=3D"ltr" class=3D"">
          <div dir=3D"ltr" class=3D"">Hi Joe and Jason.&nbsp; So, I took =
a walk down
            Memory Lane and discovered that the N210 was first released
            by Ettus Research in November 2010, which was about 6 months
            after we were acquired by National Instruments.
            <div class=3D"">It is a true statement that v2 of the =
hardware is quite
              geriatric and no longer supported in modern versions of
              UHD.&nbsp; &nbsp;However, all hope is not lost.</div>
            <div class=3D""><br class=3D"">
            </div>
            <div class=3D"">There *is* support for N200/N210 in the =
oldest version
              of UHD that is still downloadable on <a =
href=3D"http://files.ettus.com/" target=3D"_blank" =
class=3D"">files.ettus.com</a>,
              UHD v.3.8.0.0.&nbsp; &nbsp;The FPGA images are in this zip =
file:</div>
            <div class=3D""><a =
href=3D"http://files.ettus.com/binaries/images/uhd-images_003.008.000-18-g=
6647f8cc.zip" target=3D"_blank" =
class=3D"">http://files.ettus.com/binaries/images/uhd-images_003.008.000-1=
8-g6647f8cc.zip</a><br class=3D"">
            </div>
            <div class=3D""><br class=3D"">
            </div>
            <div class=3D"">We unfortunately don't have a v2 in the =
office to
              confirm that it still works, but you might want to take a
              look.&nbsp;&nbsp;</div>
            <div class=3D""><br class=3D"">
            </div>
            <div class=3D"">-Robin</div>
          </div>
        </div>
      </div>
    </blockquote>
    I'm going to go through some old disk drives on mine from "back in
    the day", and see if I have the r2 .bit files.<br class=3D"">
    <br class=3D"">
    That can't happen until the weekend, however...<br class=3D"">
    <br class=3D"">
    <br class=3D"">
    <blockquote type=3D"cite" class=3D"">
      <div dir=3D"ltr" class=3D"">
        <div dir=3D"ltr" class=3D"">
          <div dir=3D"ltr" class=3D"">
            <div class=3D""><br class=3D"">
            </div>
            <div class=3D""><br class=3D"">
            </div>
          </div>
        </div>
        <br class=3D"">
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 8, 2019 at =
10:02
            AM Marcus D. Leech via USRP-users &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" =
class=3D"">usrp-users@lists.ettus.com</a>&gt;
            wrote:<br class=3D"">
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <div bgcolor=3D"#FFFFFF" class=3D"">
              <div =
class=3D"gmail-m_4409046354640671939gmail-m_-1639864966745732941moz-cite-p=
refix">On
                05/08/2019 12:56 PM, Joe Martin via USRP-users wrote:<br =
class=3D"">
              </div>
              <blockquote type=3D"cite" class=3D""> Wow, okay; that=E2=80=99=
s disheartening.&nbsp;
                Thanks much for the info, Jason.&nbsp; Nope, the Rev3 =
bit
                file doesn=E2=80=99t work; tried it.&nbsp; I=E2=80=99ll =
see if the support
                email adr can be of use. &nbsp;
                <div class=3D""><br class=3D"">
                </div>
                <div class=3D"">Joe<br class=3D"">
                  <div class=3D""><br class=3D"">
                  </div>
                </div>
              </blockquote>
              There was a hardware change, as I recall, between Rev2 and
              Rev3 involving the inputs to the ADCs.<br class=3D"">
              <br class=3D"">
              <br class=3D"">
              <blockquote type=3D"cite" class=3D"">
                <div class=3D"">
                  <div class=3D"">
                    <blockquote type=3D"cite" class=3D"">
                      <div class=3D"">On May 8, 2019, at 10:44 AM, Jason =
Matusiak
                        &lt;<a =
href=3D"mailto:jason@gardettoengineering.com" target=3D"_blank" =
class=3D"">jason@gardettoengineering.com</a>&gt;

                        wrote:</div>
                      <br =
class=3D"gmail-m_4409046354640671939gmail-m_-1639864966745732941Apple-inte=
rchange-newline">
                      <div class=3D"">
                        <div =
style=3D"font-style:normal;font-variant-caps:normal;font-weight:normal;let=
ter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;text-decoration:none;font-family:Calibri=
,Arial,Helvetica,sans-serif;font-size:12pt" class=3D"">Joe,
                          I think you might be SOL.&nbsp; If you take a =
look
                          at this thread from me last year, I had no
                          luck:&nbsp;<a =
href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-A=
pril/056223.html" target=3D"_blank" =
class=3D"">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/201=
8-April/056223.html</a></div>
                        <div =
style=3D"font-style:normal;font-variant-caps:normal;font-weight:normal;let=
ter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;text-decoration:none;font-family:Calibri=
,Arial,Helvetica,sans-serif;font-size:12pt" class=3D""><br class=3D"">
                        </div>
                        <div =
style=3D"font-style:normal;font-variant-caps:normal;font-weight:normal;let=
ter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;text-decoration:none;font-family:Calibri=
,Arial,Helvetica,sans-serif;font-size:12pt" class=3D""><br class=3D"">
                        </div>
                        <div =
style=3D"font-style:normal;font-variant-caps:normal;font-weight:normal;let=
ter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;text-decoration:none;font-family:Calibri=
,Arial,Helvetica,sans-serif;font-size:12pt" class=3D"">Also,

                          when I pinged Ettus directly, here is some
                          info I got back from them (from two different
                          emails in the thread):</div>
                        <div =
style=3D"font-style:normal;font-variant-caps:normal;font-weight:normal;let=
ter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;text-decoration:none;font-family:Calibri=
,Arial,Helvetica,sans-serif;font-size:12pt" class=3D"">"<span =
class=3D"">we've
                            been having some trouble tracking down Rev2
                            bitfiles, because no</span><br class=3D"">
                          <span class=3D"">one here was around when that =
was built.
                            If you're trying to unbrick</span><br =
class=3D"">
                          <span class=3D"">them, Rev3 bitfiles might be =
OK, but I'm
                            not completely sure.</span></div>
                        <div =
style=3D"font-style:normal;font-variant-caps:normal;font-weight:normal;let=
ter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;text-decoration:none;font-family:Calibri=
,Arial,Helvetica,sans-serif;font-size:12pt" class=3D""><br class=3D"">
                          <span class=3D""><a =
href=3D"mailto:support@ettus.com" target=3D"_blank" =
class=3D"">support@ettus.com</a><span =
class=3D"gmail-m_4409046354640671939gmail-m_-1639864966745732941Apple-conv=
erted-space">&nbsp;</span>might
                            know more by know.</span></div>
                        <div =
style=3D"font-style:normal;font-variant-caps:normal;font-weight:normal;let=
ter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;text-decoration:none;font-family:Calibri=
,Arial,Helvetica,sans-serif;font-size:12pt" class=3D""><span =
class=3D"">really
                            sorry, but those Rev2s are just so old. And
                            all the people from</span><br class=3D"">
                          <span class=3D"">that era seem to be gone. =
Sorry, can't
                            help you with those Rev2s."</span></div>
                        <div =
id=3D"gmail-m_4409046354640671939gmail-m_-1639864966745732941Signature" =
style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-varia=
nt-caps:normal;font-weight:normal;letter-spacing:normal;text-align:start;t=
ext-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;tex=
t-decoration:none" class=3D"">
                          <div class=3D"">
                            <div =
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt" =
class=3D""><br class=3D"">
                            </div>
                            <hr =
style=3D"display:inline-block;width:1284.77px" class=3D"">
                            <div =
id=3D"gmail-m_4409046354640671939gmail-m_-1639864966745732941divRplyFwdMsg=
" dir=3D"ltr" class=3D""><font style=3D"font-size:11pt" face=3D"Calibri, =
sans-serif" class=3D""><b class=3D"">From:</b><span =
class=3D"gmail-m_4409046354640671939gmail-m_-1639864966745732941Apple-conv=
erted-space">&nbsp;</span>USRP-users

                                &lt;<a =
href=3D"mailto:usrp-users-bounces@lists.ettus.com" target=3D"_blank" =
class=3D"">usrp-users-bounces@lists.ettus.com</a>&gt;

                                on behalf of Joe Martin via USRP-users
                                &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" =
class=3D"">usrp-users@lists.ettus.com</a>&gt;<br class=3D"">
                                <b class=3D"">Sent:</b><span =
class=3D"gmail-m_4409046354640671939gmail-m_-1639864966745732941Apple-conv=
erted-space">&nbsp;</span>Wednesday,

                                May 8, 2019 11:55 AM<br class=3D"">
                                <b class=3D"">To:</b><span =
class=3D"gmail-m_4409046354640671939gmail-m_-1639864966745732941Apple-conv=
erted-space">&nbsp;</span>Joe
                                Martin via USRP-users<br class=3D"">
                                <b class=3D"">Subject:</b><span =
class=3D"gmail-m_4409046354640671939gmail-m_-1639864966745732941Apple-conv=
erted-space">&nbsp;</span>[USRP-users]

                                Bringing an elderly N210 to life by
                                loading current firmware/fpga =
images</font>
                              <div class=3D"">&nbsp;</div>
                            </div>
                            <div class=3D"">I am
                              trying to bring an elderly N210 r2.0 with
                              unknown history to life by loading current
                              UHD firmware and fpga images from a
                              1Gigabit ethernet connection on an AMD
                              2950X, 3.4GHz, 2TB SSD PC running Ubuntu
                              18.04 with UHD 3.14.0.HEAD-0-gd20a7ae2
                              software but having difficulty.&nbsp;
                              <div class=3D""><br class=3D"">
                              </div>
                              <div class=3D"">Following instructions in =
=E2=80=9CUSRP
                                Hardware Driver and USRP Manual: USRP2
                                and N2x0 Series=E2=80=9D:</div>
                              <div class=3D""><br class=3D"">
                              </div>
                              <div class=3D"">My initial action was to =
load the
                                =E2=80=9Cusrp_n210_r4_fpga.bit" file =
into the
                                N210 xc3sd3400a FPGA using a Xilinx
                                Platform Cable USB II JTAG programming
                                cable from a Win7 PC running Xilinx ISE
                                iMPACT, which reported =E2=80=9CProgram
                                Succeeded=E2=80=9D for the action.&nbsp; =
Ethernet
                                LEDs on the N210 are variously lighted
                                showing activity on the connection =
port.</div>
                              <div class=3D""><br class=3D"">
                              </div>
                              <div class=3D"">With the N210 connected to =
the Linux
                                PC 1Gbps ethernet port, issuing the
                                following commands result in the
                                responses shown in the screenshot image
                                below:&nbsp;</div>
                              <div class=3D""><br class=3D"">
                              </div>
                              <div class=3D""><span =
id=3D"gmail-m_4409046354640671939gmail-m_-1639864966745732941cid:70A3E5A1-=
EF1B-4D99-B156-F8CD7369666A" class=3D"">&lt;Screenshot

                                  from 2019-05-08 =
08-46-52.png&gt;</span></div>
                              <div class=3D""><br class=3D"">
                              </div>
                              <div class=3D"">
                                <div class=3D"">My (naive!) =
interpretation of the
                                  above responses is that the FPGA may
                                  not actually have been programmed with
                                  the *.bit code even though iMPACT
                                  reported success in programming.&nbsp; =
Can
                                  someone assist me in understanding
                                  whether my interpretation is correct
                                  or not and, most importantly, suggest
                                  what I might try next to bring this
                                  N210 to life? &nbsp;</div>
                                <div class=3D""><br class=3D"">
                                </div>
                                <div class=3D"">The =E2=80=9CPlease =
run:=E2=80=9D suggestion
                                  results in the =E2=80=9CReceived =
invalid reply
                                  32 from device=E2=80=9D error.&nbsp; =
It seems no
                                  matter what I try the =E2=80=9CReceived
                                  invalid reply 32 from device=E2=80=9D
                                  RuntimeError is reported back when I
                                  try to load any new firmware/FPGA
                                  images. &nbsp;</div>
                                <div class=3D""><br class=3D"">
                                </div>
                                <div class=3D"">Thanks!</div>
                                <div class=3D""><br class=3D"">
                                </div>
                                <div class=3D"">Joe</div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </blockquote>
                  </div>
                  <br class=3D"">
                </div>
                <br class=3D"">
                <fieldset =
class=3D"gmail-m_4409046354640671939gmail-m_-1639864966745732941mimeAttach=
mentHeader"></fieldset>
                <br class=3D"">
                <pre =
class=3D"">_______________________________________________
USRP-users mailing list
<a =
class=3D"gmail-m_4409046354640671939gmail-m_-1639864966745732941moz-txt-li=
nk-abbreviated" href=3D"mailto:USRP-users@lists.ettus.com" =
target=3D"_blank">USRP-users@lists.ettus.com</a>
<a =
class=3D"gmail-m_4409046354640671939gmail-m_-1639864966745732941moz-txt-li=
nk-freetext" =
href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
" =
target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists=
.ettus.com</a>
</pre>
              </blockquote>
              <br class=3D"">
            </div>
            _______________________________________________<br class=3D"">=

            USRP-users mailing list<br class=3D"">
            <a href=3D"mailto:USRP-users@lists.ettus.com" =
target=3D"_blank" class=3D"">USRP-users@lists.ettus.com</a><br class=3D"">=

            <a =
href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
" rel=3D"noreferrer" target=3D"_blank" =
class=3D"">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.=
com</a><br class=3D"">
          </blockquote>
        </div>
      </div>
    </blockquote>
    <br class=3D"">
  </div>

_______________________________________________<br class=3D"">USRP-users =
mailing list<br class=3D""><a href=3D"mailto:USRP-users@lists.ettus.com" =
target=3D"_blank" class=3D"">USRP-users@lists.ettus.com</a><br =
class=3D""><a =
href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
" target=3D"_blank" =
class=3D"">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.=
com</a><br class=3D""></div></blockquote></div><br =
class=3D""></div></div></div></blockquote></div>
</div></blockquote></div><br =
class=3D""></div></div>_______________________________________________<br =
class=3D"">USRP-users mailing list<br class=3D""><a =
href=3D"mailto:USRP-users@lists.ettus.com" =
class=3D"">USRP-users@lists.ettus.com</a><br =
class=3D"">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.=
com<br class=3D""></div></blockquote></div><br =
class=3D""></div></body></html>=

--Apple-Mail=_4C598178-F526-4812-9E49-575791EE162F--


--===============3854916041571864512==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3854916041571864512==--

