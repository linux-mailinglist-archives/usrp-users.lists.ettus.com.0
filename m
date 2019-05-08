Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD8D180D0
	for <lists+usrp-users@lfdr.de>; Wed,  8 May 2019 22:05:15 +0200 (CEST)
Received: from [::1] (port=52292 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOSoU-0003Rt-Bc; Wed, 08 May 2019 16:05:14 -0400
Received: from atl4mhob08.registeredsite.com ([209.17.115.46]:59682)
 by mm2.emwd.com with esmtp (Exim 4.91)
 (envelope-from <k5so@k5so.com>) id 1hOSnw-0003Je-Gs
 for usrp-users@lists.ettus.com; Wed, 08 May 2019 16:05:10 -0400
Received: from mailpod.hostingplatform.com
 (atl4qobmail02pod3.registeredsite.com [10.30.77.68])
 by atl4mhob08.registeredsite.com (8.14.4/8.14.4) with ESMTP id x48K3wuV031629
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL)
 for <usrp-users@lists.ettus.com>; Wed, 8 May 2019 16:03:58 -0400
Received: (qmail 19847 invoked by uid 0); 8 May 2019 20:03:58 -0000
X-TCPREMOTEIP: 192.206.203.10
X-Authenticated-UID: k5so@k5so.com
Received: from unknown (HELO ?192.168.1.76?) (k5so@k5so.com@192.206.203.10)
 by 0 with ESMTPA; 8 May 2019 20:03:57 -0000
Message-Id: <B98CD290-9E92-49CE-AD7D-E19FE82B5657@k5so.com>
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Date: Wed, 8 May 2019 14:03:55 -0600
In-Reply-To: <A0F0F533-AE85-4802-A676-EA4C39C9372F@k5so.com>
To: Joe Martin <k5so@k5so.com>
References: <556BBE2D-2BA6-40A3-BFF5-F5FA2351DB06@k5so.com>
 <BL0PR12MB2340E831A1782ED0958D6DBAAF320@BL0PR12MB2340.namprd12.prod.outlook.com>
 <84C6BD1A-2901-4FFC-834C-55B481EB7045@k5so.com>
 <CA+JMMq9oRqxDSVgyACAZucejC2Z3hKwciNCjX_YEJ6taCgUQ-g@mail.gmail.com>
 <CA+JMMq8N5XP6Z9CDUO0JHZxJotHRPfQRRqsvJT5-XwZZVWRv+w@mail.gmail.com>
 <A0F0F533-AE85-4802-A676-EA4C39C9372F@k5so.com>
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
Cc: Joe Martin via USRP-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2735318943429030874=="
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


--===============2735318943429030874==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_5582F71B-1F5F-4056-AFE5-473BFFF02BED"


--Apple-Mail=_5582F71B-1F5F-4056-AFE5-473BFFF02BED
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

I guess the proper way to ask is =E2=80=9CIs there a way to determine =
what fpga .bin file is in the N210?=E2=80=9D, since the .bit file that I =
loaded into the fpga is volatile code that disappears upon power cycling =
to be reloaded from an EEPROM or something, yes?

Joe

> On May 8, 2019, at 1:55 PM, Joe Martin via USRP-users =
<usrp-users@lists.ettus.com> wrote:
>=20
> Hi Nick,=20
>=20
> Thanks for the comments.  Is there a way to determine what bit file is =
currently in the N210?  If so, how please?
>=20
> Joe
>=20
>> On May 8, 2019, at 1:33 PM, Nick Foster <bistromath@gmail.com =
<mailto:bistromath@gmail.com>> wrote:
>>=20
>> I see you got there already! If you're still having trouble, I'll see =
what I can dig up over here.
>>=20
>> On Wed, May 8, 2019 at 12:31 PM Nick Foster <bistromath@gmail.com =
<mailto:bistromath@gmail.com>> wrote:
>> You might be best off reverting to a UHD old enough to support the =
bitfile currently loaded on your N210. You could then bootstrap your =
N210 by using the old UHD to load a newer FPGA image.
>>=20
>> Otherwise, it's fairly simple to convert the binfiles (which still =
exist -- usrp_n210_r2_fpga.bin) to bitfiles. You can take the header =
from usrp_n210_r3_fpga.bit and just stick it onto the front of =
usrp_n210_r2_fpga.bin, and call the output usrp_n210_r2_fpga.bit. The =
header is everything up until FF FF FF FF AA 99 55 66.
>>=20
>> Lastly, the source is all there, so building using ISE should still =
be possible.
>>=20
>> Nick
>>=20
>> On Wed, May 8, 2019 at 9:57 AM Joe Martin via USRP-users =
<usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>> Wow, okay; that=E2=80=99s disheartening.  Thanks much for the info, =
Jason.  Nope, the Rev3 bit file doesn=E2=80=99t work; tried it.  I=E2=80=99=
ll see if the support email adr can be of use. =20
>>=20
>> Joe
>>=20
>>> On May 8, 2019, at 10:44 AM, Jason Matusiak =
<jason@gardettoengineering.com <mailto:jason@gardettoengineering.com>> =
wrote:
>>>=20
>>> Joe, I think you might be SOL.  If you take a look at this thread =
from me last year, I had no luck: =
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-April/056=
223.html =
<http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-April/05=
6223.html>
>>>=20
>>>=20
>>> Also, when I pinged Ettus directly, here is some info I got back =
from them (from two different emails in the thread):
>>> "we've been having some trouble tracking down Rev2 bitfiles, because =
no
>>> one here was around when that was built. If you're trying to unbrick
>>> them, Rev3 bitfiles might be OK, but I'm not completely sure.
>>>=20
>>> support@ettus.com <mailto:support@ettus.com> might know more by =
know.
>>> really sorry, but those Rev2s are just so old. And all the people =
from
>>> that era seem to be gone. Sorry, can't help you with those Rev2s."
>>>=20
>>> From: USRP-users <usrp-users-bounces@lists.ettus.com =
<mailto:usrp-users-bounces@lists.ettus.com>> on behalf of Joe Martin via =
USRP-users <usrp-users@lists.ettus.com =
<mailto:usrp-users@lists.ettus.com>>
>>> Sent: Wednesday, May 8, 2019 11:55 AM
>>> To: Joe Martin via USRP-users
>>> Subject: [USRP-users] Bringing an elderly N210 to life by loading =
current firmware/fpga images
>>> =20
>>> I am trying to bring an elderly N210 r2.0 with unknown history to =
life by loading current UHD firmware and fpga images from a 1Gigabit =
ethernet connection on an AMD 2950X, 3.4GHz, 2TB SSD PC running Ubuntu =
18.04 with UHD 3.14.0.HEAD-0-gd20a7ae2 software but having difficulty.=20=

>>>=20
>>> Following instructions in =E2=80=9CUSRP Hardware Driver and USRP =
Manual: USRP2 and N2x0 Series=E2=80=9D:
>>>=20
>>> My initial action was to load the =E2=80=9Cusrp_n210_r4_fpga.bit" =
file into the N210 xc3sd3400a FPGA using a Xilinx Platform Cable USB II =
JTAG programming cable from a Win7 PC running Xilinx ISE iMPACT, which =
reported =E2=80=9CProgram Succeeded=E2=80=9D for the action.  Ethernet =
LEDs on the N210 are variously lighted showing activity on the =
connection port.
>>>=20
>>> With the N210 connected to the Linux PC 1Gbps ethernet port, issuing =
the following commands result in the responses shown in the screenshot =
image below:=20
>>>=20
>>> <Screenshot from 2019-05-08 08-46-52.png>
>>>=20
>>> My (naive!) interpretation of the above responses is that the FPGA =
may not actually have been programmed with the *.bit code even though =
iMPACT reported success in programming.  Can someone assist me in =
understanding whether my interpretation is correct or not and, most =
importantly, suggest what I might try next to bring this N210 to life? =20=

>>>=20
>>> The =E2=80=9CPlease run:=E2=80=9D suggestion results in the =
=E2=80=9CReceived invalid reply 32 from device=E2=80=9D error.  It seems =
no matter what I try the =E2=80=9CReceived invalid reply 32 from =
device=E2=80=9D RuntimeError is reported back when I try to load any new =
firmware/FPGA images. =20
>>>=20
>>> Thanks!
>>>=20
>>> Joe
>>=20
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com =
<http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>
>=20
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--Apple-Mail=_5582F71B-1F5F-4056-AFE5-473BFFF02BED
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D"">I =
guess the proper way to ask is =E2=80=9CIs there a way to determine what =
fpga .bin file is in the N210?=E2=80=9D, since the .bit file that I =
loaded into the fpga is volatile code that disappears upon power cycling =
to be reloaded from an EEPROM or something, yes?<div class=3D""><br =
class=3D""></div><div class=3D"">Joe<br class=3D""><div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D"">On May =
8, 2019, at 1:55 PM, Joe Martin via USRP-users &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com" =
class=3D"">usrp-users@lists.ettus.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><meta =
http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8" =
class=3D""><div style=3D"word-wrap: break-word; -webkit-nbsp-mode: =
space; line-break: after-white-space;" class=3D"">Hi Nick,&nbsp;<div =
class=3D""><br class=3D""></div><div class=3D"">Thanks for the comments. =
&nbsp;Is there a way to determine what bit file is currently in the =
N210? &nbsp;If so, how please?</div><div class=3D""><br =
class=3D""></div><div class=3D"">Joe<br class=3D""><div class=3D""><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D"">On May =
8, 2019, at 1:33 PM, Nick Foster &lt;<a =
href=3D"mailto:bistromath@gmail.com" =
class=3D"">bistromath@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D"">I see you got there already! If you're still having trouble, =
I'll see what I can dig up over here.<br class=3D""></div><br =
class=3D""><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Wed, May 8, 2019 at 12:31 PM Nick Foster &lt;<a =
href=3D"mailto:bistromath@gmail.com" =
class=3D"">bistromath@gmail.com</a>&gt; wrote:<br =
class=3D""></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr" class=3D""><div =
class=3D"">You might be best off reverting to a UHD old enough to =
support the bitfile currently loaded on your N210. You could then =
bootstrap your N210 by using the old UHD to load a newer FPGA image.<br =
class=3D""></div><div class=3D""><br class=3D""></div><div =
class=3D"">Otherwise, it's fairly simple to convert the binfiles (which =
still exist -- usrp_n210_r2_fpga.bin) to bitfiles. You can take the =
header from usrp_n210_r3_fpga.bit and just stick it onto the front of =
usrp_n210_r2_fpga.bin, and call the output usrp_n210_r2_fpga.bit. The =
header is everything up until FF FF FF FF AA 99 55 66.</div><div =
class=3D""><br class=3D""></div><div class=3D"">Lastly, the source is =
all there, so building using ISE should still be possible.<br =
class=3D""></div><div class=3D""><br class=3D""></div><div =
class=3D"">Nick<br class=3D""></div></div><br class=3D""><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May =
8, 2019 at 9:57 AM Joe Martin via USRP-users &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" =
class=3D"">usrp-users@lists.ettus.com</a>&gt; wrote:<br =
class=3D""></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div class=3D"">Wow, okay; that=E2=80=99=
s disheartening.&nbsp; Thanks much for the info, Jason.&nbsp; Nope, the =
Rev3 bit file doesn=E2=80=99t work; tried it.&nbsp; I=E2=80=99ll see if =
the support email adr can be of use. &nbsp;<div class=3D""><br =
class=3D""></div><div class=3D"">Joe<br class=3D""><div class=3D""><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D"">On May =
8, 2019, at 10:44 AM, Jason Matusiak &lt;<a =
href=3D"mailto:jason@gardettoengineering.com" target=3D"_blank" =
class=3D"">jason@gardettoengineering.com</a>&gt; wrote:</div><br =
class=3D"gmail-m_4803857818538028017gmail-m_-156105540658111525Apple-inter=
change-newline"><div class=3D""><div =
style=3D"font-style:normal;font-variant-caps:normal;font-weight:normal;let=
ter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;text-decoration:none;font-family:Calibri=
,Arial,Helvetica,sans-serif;font-size:12pt" class=3D"">Joe, I think you =
might be SOL.&nbsp; If you take a look at this thread from me last year, =
I had no luck:&nbsp;<a =
href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-A=
pril/056223.html" target=3D"_blank" =
class=3D"">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/201=
8-April/056223.html</a></div><div =
style=3D"font-style:normal;font-variant-caps:normal;font-weight:normal;let=
ter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;text-decoration:none;font-family:Calibri=
,Arial,Helvetica,sans-serif;font-size:12pt" class=3D""><br =
class=3D""></div><div =
style=3D"font-style:normal;font-variant-caps:normal;font-weight:normal;let=
ter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;text-decoration:none;font-family:Calibri=
,Arial,Helvetica,sans-serif;font-size:12pt" class=3D""><br =
class=3D""></div><div =
style=3D"font-style:normal;font-variant-caps:normal;font-weight:normal;let=
ter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;text-decoration:none;font-family:Calibri=
,Arial,Helvetica,sans-serif;font-size:12pt" class=3D"">Also, when I =
pinged Ettus directly, here is some info I got back from them (from two =
different emails in the thread):</div><div =
style=3D"font-style:normal;font-variant-caps:normal;font-weight:normal;let=
ter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;text-decoration:none;font-family:Calibri=
,Arial,Helvetica,sans-serif;font-size:12pt" class=3D"">"<span =
style=3D"color:rgb(32,31,30);font-size:14.6667px;background-color:rgb(255,=
255,255);display:inline" class=3D"">we've been having some trouble =
tracking down Rev2 bitfiles, because no</span><br =
style=3D"color:rgb(32,31,30);font-size:14.6667px;background-color:rgb(255,=
255,255)" class=3D""><span =
style=3D"color:rgb(32,31,30);font-size:14.6667px;background-color:rgb(255,=
255,255);display:inline" class=3D"">one here was around when that was =
built. If you're trying to unbrick</span><br =
style=3D"color:rgb(32,31,30);font-size:14.6667px;background-color:rgb(255,=
255,255)" class=3D""><span =
style=3D"color:rgb(32,31,30);font-size:14.6667px;background-color:rgb(255,=
255,255);display:inline" class=3D"">them, Rev3 bitfiles might be OK, but =
I'm not completely sure.</span></div><div =
style=3D"font-style:normal;font-variant-caps:normal;font-weight:normal;let=
ter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;text-decoration:none;font-family:Calibri=
,Arial,Helvetica,sans-serif;font-size:12pt" class=3D""><br =
style=3D"color:rgb(32,31,30);font-size:14.6667px;background-color:rgb(255,=
255,255)" class=3D""><span =
style=3D"color:rgb(32,31,30);font-size:14.6667px;background-color:rgb(255,=
255,255);display:inline" class=3D""><a href=3D"mailto:support@ettus.com" =
target=3D"_blank" class=3D"">support@ettus.com</a><span =
class=3D"gmail-m_4803857818538028017gmail-m_-156105540658111525Apple-conve=
rted-space">&nbsp;</span>might know more by know.</span></div><div =
style=3D"font-style:normal;font-variant-caps:normal;font-weight:normal;let=
ter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;text-decoration:none;font-family:Calibri=
,Arial,Helvetica,sans-serif;font-size:12pt" class=3D""><span =
style=3D"color:rgb(32,31,30);font-size:14.6667px;background-color:rgb(255,=
255,255);display:inline" class=3D"">really sorry, but those Rev2s are =
just so old. And all the people from</span><br =
style=3D"color:rgb(32,31,30);font-size:14.6667px;background-color:rgb(255,=
255,255)" class=3D""><span =
style=3D"color:rgb(32,31,30);font-size:14.6667px;background-color:rgb(255,=
255,255);display:inline" class=3D"">that era seem to be gone. Sorry, =
can't help you with those Rev2s."</span></div><div =
id=3D"gmail-m_4803857818538028017gmail-m_-156105540658111525Signature" =
style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-varia=
nt-caps:normal;font-weight:normal;letter-spacing:normal;text-align:start;t=
ext-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;tex=
t-decoration:none" class=3D""><div class=3D""><div =
id=3D"gmail-m_4803857818538028017gmail-m_-156105540658111525appendonsend" =
class=3D""></div><div =
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt" =
class=3D""><br class=3D""></div><hr =
style=3D"display:inline-block;width:1284.77px" class=3D""><div =
id=3D"gmail-m_4803857818538028017gmail-m_-156105540658111525divRplyFwdMsg"=
 dir=3D"ltr" class=3D""><font style=3D"font-size:11pt" face=3D"Calibri, =
sans-serif" class=3D""><b class=3D"">From:</b><span =
class=3D"gmail-m_4803857818538028017gmail-m_-156105540658111525Apple-conve=
rted-space">&nbsp;</span>USRP-users &lt;<a =
href=3D"mailto:usrp-users-bounces@lists.ettus.com" target=3D"_blank" =
class=3D"">usrp-users-bounces@lists.ettus.com</a>&gt; on behalf of Joe =
Martin via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank" class=3D"">usrp-users@lists.ettus.com</a>&gt;<br =
class=3D""><b class=3D"">Sent:</b><span =
class=3D"gmail-m_4803857818538028017gmail-m_-156105540658111525Apple-conve=
rted-space">&nbsp;</span>Wednesday, May 8, 2019 11:55 AM<br class=3D""><b =
class=3D"">To:</b><span =
class=3D"gmail-m_4803857818538028017gmail-m_-156105540658111525Apple-conve=
rted-space">&nbsp;</span>Joe Martin via USRP-users<br class=3D""><b =
class=3D"">Subject:</b><span =
class=3D"gmail-m_4803857818538028017gmail-m_-156105540658111525Apple-conve=
rted-space">&nbsp;</span>[USRP-users] Bringing an elderly N210 to life =
by loading current firmware/fpga images</font><div =
class=3D"">&nbsp;</div></div><div class=3D"">I am trying to bring an =
elderly N210 r2.0 with unknown history to life by loading current UHD =
firmware and fpga images from a 1Gigabit ethernet connection on an AMD =
2950X, 3.4GHz, 2TB SSD PC running Ubuntu 18.04 with UHD =
3.14.0.HEAD-0-gd20a7ae2 software but having difficulty.&nbsp;<div =
class=3D""><br class=3D""></div><div class=3D"">Following instructions =
in =E2=80=9CUSRP Hardware Driver and USRP Manual: USRP2 and N2x0 =
Series=E2=80=9D:</div><div class=3D""><br class=3D""></div><div =
class=3D"">My initial action was to load the =E2=80=9Cusrp_n210_r4_fpga.bi=
t" file into the N210 xc3sd3400a FPGA using a Xilinx Platform Cable USB =
II JTAG programming cable from a Win7 PC running Xilinx ISE iMPACT, =
which reported =E2=80=9CProgram Succeeded=E2=80=9D for the action.&nbsp; =
Ethernet LEDs on the N210 are variously lighted showing activity on the =
connection port.</div><div class=3D""><br class=3D""></div><div =
class=3D"">With the N210 connected to the Linux PC 1Gbps ethernet port, =
issuing the following commands result in the responses shown in the =
screenshot image below:&nbsp;</div><div class=3D""><br =
class=3D""></div><div class=3D""><span =
id=3D"gmail-m_4803857818538028017gmail-m_-156105540658111525cid:70A3E5A1-E=
F1B-4D99-B156-F8CD7369666A" class=3D"">&lt;Screenshot from 2019-05-08 =
08-46-52.png&gt;</span></div><div class=3D""><br class=3D""></div><div =
class=3D""><div class=3D"">My (naive!) interpretation of the above =
responses is that the FPGA may not actually have been programmed with =
the *.bit code even though iMPACT reported success in programming.&nbsp; =
Can someone assist me in understanding whether my interpretation is =
correct or not and, most importantly, suggest what I might try next to =
bring this N210 to life? &nbsp;</div><div class=3D""><br =
class=3D""></div><div class=3D"">The =E2=80=9CPlease run:=E2=80=9D =
suggestion results in the =E2=80=9CReceived invalid reply 32 from =
device=E2=80=9D error.&nbsp; It seems no matter what I try the =
=E2=80=9CReceived invalid reply 32 from device=E2=80=9D RuntimeError is =
reported back when I try to load any new firmware/FPGA images. =
&nbsp;</div><div class=3D""><br class=3D""></div><div =
class=3D"">Thanks!</div><div class=3D""><br class=3D""></div><div =
class=3D"">Joe</div></div></div></div></div></div></blockquote></div><br =
class=3D""></div></div>_______________________________________________<br =
class=3D"">
USRP-users mailing list<br class=3D"">
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" =
class=3D"">USRP-users@lists.ettus.com</a><br class=3D"">
<a =
href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
" rel=3D"noreferrer" target=3D"_blank" =
class=3D"">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.=
com</a><br class=3D"">
</blockquote></div>
</blockquote></div>
</div></blockquote></div><br =
class=3D""></div></div>_______________________________________________<br =
class=3D"">USRP-users mailing list<br class=3D""><a =
href=3D"mailto:USRP-users@lists.ettus.com" =
class=3D"">USRP-users@lists.ettus.com</a><br =
class=3D"">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.=
com<br class=3D""></div></blockquote></div><br =
class=3D""></div></body></html>=

--Apple-Mail=_5582F71B-1F5F-4056-AFE5-473BFFF02BED--


--===============2735318943429030874==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2735318943429030874==--

