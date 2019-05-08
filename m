Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D41E18116
	for <lists+usrp-users@lfdr.de>; Wed,  8 May 2019 22:32:31 +0200 (CEST)
Received: from [::1] (port=33240 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOTEp-0005nf-3g; Wed, 08 May 2019 16:32:27 -0400
Received: from mail-io1-f41.google.com ([209.85.166.41]:39425)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <bistromath@gmail.com>)
 id 1hOTEG-0005O3-VD
 for usrp-users@lists.ettus.com; Wed, 08 May 2019 16:32:23 -0400
Received: by mail-io1-f41.google.com with SMTP id m7so15932612ioa.6
 for <usrp-users@lists.ettus.com>; Wed, 08 May 2019 13:31:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JW/aZxtt4qCrKWbLX0GdafCwI2lF6z7VPw4NEnFsbZc=;
 b=L6HhZ1qxQj4GrOz+E65c6UR8OvBeAFOG03//4iXkzXlNgUpnx0I9aS7Z+FZmEmMrji
 59F/LslO5SthyolHC6+tyvhKzUJRzM7p3bNNx3KvBzegfZDHrGcIDXmMPHuE3uK5Ulox
 8Vu2N/dimIFfhmfhf2t5z3O1KF8jQPGJw9QmJRrps+lBoAaaBXzjlKhfO0n2qt2cQq6t
 oK8HH+sTTWvvI2GhSt1GPq8ySZSTXTUWD1m40WK4CbgaDEmC57pORY3bZHQaq2Iydv6m
 Vo3vHjxOoUBVXZUjlHoUrIkMBrBrJh5jZB9AwU9yIyBY3tHqyvCvBCerQ/bM0g55Bq1U
 EAjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JW/aZxtt4qCrKWbLX0GdafCwI2lF6z7VPw4NEnFsbZc=;
 b=c7vSrodGZ7qKQKbOn+CzdC7BRlZGTMXQpuNx//nD/pytvE2G+Rhx5Q4NB9yk8Zfswh
 9ByR5+ezGbTwp42eZ0IVTp4Y8+R7DcXKRoX/O505IA/RYUzSup1NsUBNKG6LhQxFYJ5z
 K/gB/1qp/xqzowMlsyLDHGKK9JoK/Xc8DM4Vs5bSN91RyhKjggp+BuBCc8o9dAVb0Qby
 X1cie7rux5lQ/PKr+RKfR0VsRVGN1UapYyjxwaD2QnopYqN9rkoduW4dJodl2rqtbcwD
 vozrrpw70mxS0SKuRbN/i3Tfke4BAhZTMLhI+OljCbpyEH+Sm6i51qKyp8vqjSuX80R3
 RB6w==
X-Gm-Message-State: APjAAAU8dWLfFOV71SzLXIXbGeh/5DnPxk/yI4Nky5kRMT4DNUqa/TYL
 3IjJlvZIDDs63+0S9BkmjEA7/9un2uS02VliGq8=
X-Google-Smtp-Source: APXvYqxEYsR2orGIY+wKJ6VyYPr5+GNrEyVHZajHVOu4Qg4yiP2e1sZDJFL0pHZcscuc9voGjXOTO9AIYp8mpFldlYU=
X-Received: by 2002:a6b:f90c:: with SMTP id j12mr2163615iog.53.1557347472219; 
 Wed, 08 May 2019 13:31:12 -0700 (PDT)
MIME-Version: 1.0
References: <556BBE2D-2BA6-40A3-BFF5-F5FA2351DB06@k5so.com>
 <BL0PR12MB2340E831A1782ED0958D6DBAAF320@BL0PR12MB2340.namprd12.prod.outlook.com>
 <84C6BD1A-2901-4FFC-834C-55B481EB7045@k5so.com>
 <CA+JMMq9oRqxDSVgyACAZucejC2Z3hKwciNCjX_YEJ6taCgUQ-g@mail.gmail.com>
 <CA+JMMq8N5XP6Z9CDUO0JHZxJotHRPfQRRqsvJT5-XwZZVWRv+w@mail.gmail.com>
 <A0F0F533-AE85-4802-A676-EA4C39C9372F@k5so.com>
 <B98CD290-9E92-49CE-AD7D-E19FE82B5657@k5so.com>
In-Reply-To: <B98CD290-9E92-49CE-AD7D-E19FE82B5657@k5so.com>
Date: Wed, 8 May 2019 13:31:00 -0700
Message-ID: <CA+JMMq9+WVXGDRwBd9WAcwXHXDynDsUYy4nOXuryttxvNKbXCA@mail.gmail.com>
To: Joe Martin <k5so@k5so.com>
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
From: Nick Foster via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nick Foster <bistromath@gmail.com>
Cc: Joe Martin via USRP-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0847470708183197989=="
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

--===============0847470708183197989==
Content-Type: multipart/alternative; boundary="000000000000dfa3780588663626"

--000000000000dfa3780588663626
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, code loaded over JTAG is gone at next boot. I can't think of an easy
way to figure out what image is loaded other than asking UHD to query it
for FPGA compat number.

On Wed, May 8, 2019 at 1:04 PM Joe Martin <k5so@k5so.com> wrote:

> I guess the proper way to ask is =E2=80=9CIs there a way to determine wha=
t fpga
> .bin file is in the N210?=E2=80=9D, since the .bit file that I loaded int=
o the fpga
> is volatile code that disappears upon power cycling to be reloaded from a=
n
> EEPROM or something, yes?
>
> Joe
>
> On May 8, 2019, at 1:55 PM, Joe Martin via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Hi Nick,
>
> Thanks for the comments.  Is there a way to determine what bit file is
> currently in the N210?  If so, how please?
>
> Joe
>
> On May 8, 2019, at 1:33 PM, Nick Foster <bistromath@gmail.com> wrote:
>
> I see you got there already! If you're still having trouble, I'll see wha=
t
> I can dig up over here.
>
> On Wed, May 8, 2019 at 12:31 PM Nick Foster <bistromath@gmail.com> wrote:
>
>> You might be best off reverting to a UHD old enough to support the
>> bitfile currently loaded on your N210. You could then bootstrap your N21=
0
>> by using the old UHD to load a newer FPGA image.
>>
>> Otherwise, it's fairly simple to convert the binfiles (which still exist
>> -- usrp_n210_r2_fpga.bin) to bitfiles. You can take the header from
>> usrp_n210_r3_fpga.bit and just stick it onto the front of
>> usrp_n210_r2_fpga.bin, and call the output usrp_n210_r2_fpga.bit. The
>> header is everything up until FF FF FF FF AA 99 55 66.
>>
>> Lastly, the source is all there, so building using ISE should still be
>> possible.
>>
>> Nick
>>
>> On Wed, May 8, 2019 at 9:57 AM Joe Martin via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Wow, okay; that=E2=80=99s disheartening.  Thanks much for the info, Jas=
on.
>>> Nope, the Rev3 bit file doesn=E2=80=99t work; tried it.  I=E2=80=99ll s=
ee if the support
>>> email adr can be of use.
>>>
>>> Joe
>>>
>>> On May 8, 2019, at 10:44 AM, Jason Matusiak <
>>> jason@gardettoengineering.com> wrote:
>>>
>>> Joe, I think you might be SOL.  If you take a look at this thread from
>>> me last year, I had no luck:
>>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-April/=
056223.html
>>>
>>>
>>> Also, when I pinged Ettus directly, here is some info I got back from
>>> them (from two different emails in the thread):
>>> "we've been having some trouble tracking down Rev2 bitfiles, because no
>>> one here was around when that was built. If you're trying to unbrick
>>> them, Rev3 bitfiles might be OK, but I'm not completely sure.
>>>
>>> support@ettus.com might know more by know.
>>> really sorry, but those Rev2s are just so old. And all the people from
>>> that era seem to be gone. Sorry, can't help you with those Rev2s."
>>>
>>> ------------------------------
>>> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of
>>> Joe Martin via USRP-users <usrp-users@lists.ettus.com>
>>> *Sent:* Wednesday, May 8, 2019 11:55 AM
>>> *To:* Joe Martin via USRP-users
>>> *Subject:* [USRP-users] Bringing an elderly N210 to life by loading
>>> current firmware/fpga images
>>>
>>> I am trying to bring an elderly N210 r2.0 with unknown history to life
>>> by loading current UHD firmware and fpga images from a 1Gigabit etherne=
t
>>> connection on an AMD 2950X, 3.4GHz, 2TB SSD PC running Ubuntu 18.04 wit=
h
>>> UHD 3.14.0.HEAD-0-gd20a7ae2 software but having difficulty.
>>>
>>> Following instructions in =E2=80=9CUSRP Hardware Driver and USRP Manual=
: USRP2
>>> and N2x0 Series=E2=80=9D:
>>>
>>> My initial action was to load the =E2=80=9Cusrp_n210_r4_fpga.bit" file =
into the
>>> N210 xc3sd3400a FPGA using a Xilinx Platform Cable USB II JTAG programm=
ing
>>> cable from a Win7 PC running Xilinx ISE iMPACT, which reported =E2=80=
=9CProgram
>>> Succeeded=E2=80=9D for the action.  Ethernet LEDs on the N210 are vario=
usly lighted
>>> showing activity on the connection port.
>>>
>>> With the N210 connected to the Linux PC 1Gbps ethernet port, issuing th=
e
>>> following commands result in the responses shown in the screenshot imag=
e
>>> below:
>>>
>>> <Screenshot from 2019-05-08 08-46-52.png>
>>>
>>> My (naive!) interpretation of the above responses is that the FPGA may
>>> not actually have been programmed with the *.bit code even though iMPAC=
T
>>> reported success in programming.  Can someone assist me in understandin=
g
>>> whether my interpretation is correct or not and, most importantly, sugg=
est
>>> what I might try next to bring this N210 to life?
>>>
>>> The =E2=80=9CPlease run:=E2=80=9D suggestion results in the =E2=80=9CRe=
ceived invalid reply 32
>>> from device=E2=80=9D error.  It seems no matter what I try the =E2=80=
=9CReceived invalid
>>> reply 32 from device=E2=80=9D RuntimeError is reported back when I try =
to load any
>>> new firmware/FPGA images.
>>>
>>> Thanks!
>>>
>>> Joe
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
>

--000000000000dfa3780588663626
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes, code loaded over JTAG is gone at next boot. I can&#39=
;t think of an easy way to figure out what image is loaded other than askin=
g UHD to query it for FPGA compat number.<br></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 8, 2019 at 1:04 PM=
 Joe Martin &lt;<a href=3D"mailto:k5so@k5so.com">k5so@k5so.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div style=3D=
"overflow-wrap: break-word;">I guess the proper way to ask is =E2=80=9CIs t=
here a way to determine what fpga .bin file is in the N210?=E2=80=9D, since=
 the .bit file that I loaded into the fpga is volatile code that disappears=
 upon power cycling to be reloaded from an EEPROM or something, yes?<div><b=
r></div><div>Joe<br><div><br><blockquote type=3D"cite"><div>On May 8, 2019,=
 at 1:55 PM, Joe Martin via USRP-users &lt;<a href=3D"mailto:usrp-users@lis=
ts.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:</=
div><br class=3D"gmail-m_8060179659594778536Apple-interchange-newline"><div=
><div style=3D"overflow-wrap: break-word;">Hi Nick,=C2=A0<div><br></div><di=
v>Thanks for the comments.=C2=A0 Is there a way to determine what bit file =
is currently in the N210?=C2=A0 If so, how please?</div><div><br></div><div=
>Joe<br><div><br><blockquote type=3D"cite"><div>On May 8, 2019, at 1:33 PM,=
 Nick Foster &lt;<a href=3D"mailto:bistromath@gmail.com" target=3D"_blank">=
bistromath@gmail.com</a>&gt; wrote:</div><br class=3D"gmail-m_8060179659594=
778536Apple-interchange-newline"><div><div dir=3D"ltr">I see you got there =
already! If you&#39;re still having trouble, I&#39;ll see what I can dig up=
 over here.<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, May 8, 2019 at 12:31 PM Nick Foster &lt;<a href=3D"=
mailto:bistromath@gmail.com" target=3D"_blank">bistromath@gmail.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div>You might be best off reverting to a UHD old enough to suppor=
t the bitfile currently loaded on your N210. You could then bootstrap your =
N210 by using the old UHD to load a newer FPGA image.<br></div><div><br></d=
iv><div>Otherwise, it&#39;s fairly simple to convert the binfiles (which st=
ill exist -- usrp_n210_r2_fpga.bin) to bitfiles. You can take the header fr=
om usrp_n210_r3_fpga.bit and just stick it onto the front of usrp_n210_r2_f=
pga.bin, and call the output usrp_n210_r2_fpga.bit. The header is everythin=
g up until FF FF FF FF AA 99 55 66.</div><div><br></div><div>Lastly, the so=
urce is all there, so building using ISE should still be possible.<br></div=
><div><br></div><div>Nick<br></div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Wed, May 8, 2019 at 9:57 AM Joe Marti=
n via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div>Wow, okay; that=E2=80=99s dishea=
rtening.=C2=A0 Thanks much for the info, Jason.=C2=A0 Nope, the Rev3 bit fi=
le doesn=E2=80=99t work; tried it.=C2=A0 I=E2=80=99ll see if the support em=
ail adr can be of use. =C2=A0<div><br></div><div>Joe<br><div><br><blockquot=
e type=3D"cite"><div>On May 8, 2019, at 10:44 AM, Jason Matusiak &lt;<a hre=
f=3D"mailto:jason@gardettoengineering.com" target=3D"_blank">jason@gardetto=
engineering.com</a>&gt; wrote:</div><br class=3D"gmail-m_806017965959477853=
6gmail-m_4803857818538028017gmail-m_-156105540658111525Apple-interchange-ne=
wline"><div><div style=3D"font-style:normal;font-variant-caps:normal;font-w=
eight:normal;letter-spacing:normal;text-align:start;text-indent:0px;text-tr=
ansform:none;white-space:normal;word-spacing:0px;text-decoration:none;font-=
family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt">Joe, I think you =
might be SOL.=C2=A0 If you take a look at this thread from me last year, I =
had no luck:=C2=A0<a href=3D"http://lists.ettus.com/pipermail/usrp-users_li=
sts.ettus.com/2018-April/056223.html" target=3D"_blank">http://lists.ettus.=
com/pipermail/usrp-users_lists.ettus.com/2018-April/056223.html</a></div><d=
iv style=3D"font-style:normal;font-variant-caps:normal;font-weight:normal;l=
etter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;w=
hite-space:normal;word-spacing:0px;text-decoration:none;font-family:Calibri=
,Arial,Helvetica,sans-serif;font-size:12pt"><br></div><div style=3D"font-st=
yle:normal;font-variant-caps:normal;font-weight:normal;letter-spacing:norma=
l;text-align:start;text-indent:0px;text-transform:none;white-space:normal;w=
ord-spacing:0px;text-decoration:none;font-family:Calibri,Arial,Helvetica,sa=
ns-serif;font-size:12pt"><br></div><div style=3D"font-style:normal;font-var=
iant-caps:normal;font-weight:normal;letter-spacing:normal;text-align:start;=
text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;tex=
t-decoration:none;font-family:Calibri,Arial,Helvetica,sans-serif;font-size:=
12pt">Also, when I pinged Ettus directly, here is some info I got back from=
 them (from two different emails in the thread):</div><div style=3D"font-st=
yle:normal;font-variant-caps:normal;font-weight:normal;letter-spacing:norma=
l;text-align:start;text-indent:0px;text-transform:none;white-space:normal;w=
ord-spacing:0px;text-decoration:none;font-family:Calibri,Arial,Helvetica,sa=
ns-serif;font-size:12pt">&quot;<span style=3D"color:rgb(32,31,30);font-size=
:14.6667px;background-color:rgb(255,255,255);display:inline">we&#39;ve been=
 having some trouble tracking down Rev2 bitfiles, because no</span><br styl=
e=3D"color:rgb(32,31,30);font-size:14.6667px;background-color:rgb(255,255,2=
55)"><span style=3D"color:rgb(32,31,30);font-size:14.6667px;background-colo=
r:rgb(255,255,255);display:inline">one here was around when that was built.=
 If you&#39;re trying to unbrick</span><br style=3D"color:rgb(32,31,30);fon=
t-size:14.6667px;background-color:rgb(255,255,255)"><span style=3D"color:rg=
b(32,31,30);font-size:14.6667px;background-color:rgb(255,255,255);display:i=
nline">them, Rev3 bitfiles might be OK, but I&#39;m not completely sure.</s=
pan></div><div style=3D"font-style:normal;font-variant-caps:normal;font-wei=
ght:normal;letter-spacing:normal;text-align:start;text-indent:0px;text-tran=
sform:none;white-space:normal;word-spacing:0px;text-decoration:none;font-fa=
mily:Calibri,Arial,Helvetica,sans-serif;font-size:12pt"><br style=3D"color:=
rgb(32,31,30);font-size:14.6667px;background-color:rgb(255,255,255)"><span =
style=3D"color:rgb(32,31,30);font-size:14.6667px;background-color:rgb(255,2=
55,255);display:inline"><a href=3D"mailto:support@ettus.com" target=3D"_bla=
nk">support@ettus.com</a><span class=3D"gmail-m_8060179659594778536gmail-m_=
4803857818538028017gmail-m_-156105540658111525Apple-converted-space">=C2=A0=
</span>might know more by know.</span></div><div style=3D"font-style:normal=
;font-variant-caps:normal;font-weight:normal;letter-spacing:normal;text-ali=
gn:start;text-indent:0px;text-transform:none;white-space:normal;word-spacin=
g:0px;text-decoration:none;font-family:Calibri,Arial,Helvetica,sans-serif;f=
ont-size:12pt"><span style=3D"color:rgb(32,31,30);font-size:14.6667px;backg=
round-color:rgb(255,255,255);display:inline">really sorry, but those Rev2s =
are just so old. And all the people from</span><br style=3D"color:rgb(32,31=
,30);font-size:14.6667px;background-color:rgb(255,255,255)"><span style=3D"=
color:rgb(32,31,30);font-size:14.6667px;background-color:rgb(255,255,255);d=
isplay:inline">that era seem to be gone. Sorry, can&#39;t help you with tho=
se Rev2s.&quot;</span></div><div id=3D"gmail-m_8060179659594778536gmail-m_4=
803857818538028017gmail-m_-156105540658111525Signature" style=3D"font-famil=
y:Helvetica;font-size:12px;font-style:normal;font-variant-caps:normal;font-=
weight:normal;letter-spacing:normal;text-align:start;text-indent:0px;text-t=
ransform:none;white-space:normal;word-spacing:0px;text-decoration:none"><di=
v><div id=3D"gmail-m_8060179659594778536gmail-m_4803857818538028017gmail-m_=
-156105540658111525appendonsend"></div><div style=3D"font-family:Calibri,Ar=
ial,Helvetica,sans-serif;font-size:12pt"><br></div><hr style=3D"display:inl=
ine-block;width:1284.77px"><div id=3D"gmail-m_8060179659594778536gmail-m_48=
03857818538028017gmail-m_-156105540658111525divRplyFwdMsg" dir=3D"ltr"><fon=
t style=3D"font-size:11pt" face=3D"Calibri, sans-serif"><b>From:</b><span c=
lass=3D"gmail-m_8060179659594778536gmail-m_4803857818538028017gmail-m_-1561=
05540658111525Apple-converted-space">=C2=A0</span>USRP-users &lt;<a href=3D=
"mailto:usrp-users-bounces@lists.ettus.com" target=3D"_blank">usrp-users-bo=
unces@lists.ettus.com</a>&gt; on behalf of Joe Martin via USRP-users &lt;<a=
 href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@li=
sts.ettus.com</a>&gt;<br><b>Sent:</b><span class=3D"gmail-m_806017965959477=
8536gmail-m_4803857818538028017gmail-m_-156105540658111525Apple-converted-s=
pace">=C2=A0</span>Wednesday, May 8, 2019 11:55 AM<br><b>To:</b><span class=
=3D"gmail-m_8060179659594778536gmail-m_4803857818538028017gmail-m_-15610554=
0658111525Apple-converted-space">=C2=A0</span>Joe Martin via USRP-users<br>=
<b>Subject:</b><span class=3D"gmail-m_8060179659594778536gmail-m_4803857818=
538028017gmail-m_-156105540658111525Apple-converted-space">=C2=A0</span>[US=
RP-users] Bringing an elderly N210 to life by loading current firmware/fpga=
 images</font><div>=C2=A0</div></div><div>I am trying to bring an elderly N=
210 r2.0 with unknown history to life by loading current UHD firmware and f=
pga images from a 1Gigabit ethernet connection on an AMD 2950X, 3.4GHz, 2TB=
 SSD PC running Ubuntu 18.04 with UHD 3.14.0.HEAD-0-gd20a7ae2 software but =
having difficulty.=C2=A0<div><br></div><div>Following instructions in =E2=
=80=9CUSRP Hardware Driver and USRP Manual: USRP2 and N2x0 Series=E2=80=9D:=
</div><div><br></div><div>My initial action was to load the =E2=80=9Cusrp_n=
210_r4_fpga.bit&quot; file into the N210 xc3sd3400a FPGA using a Xilinx Pla=
tform Cable USB II JTAG programming cable from a Win7 PC running Xilinx ISE=
 iMPACT, which reported =E2=80=9CProgram Succeeded=E2=80=9D for the action.=
=C2=A0 Ethernet LEDs on the N210 are variously lighted showing activity on =
the connection port.</div><div><br></div><div>With the N210 connected to th=
e Linux PC 1Gbps ethernet port, issuing the following commands result in th=
e responses shown in the screenshot image below:=C2=A0</div><div><br></div>=
<div><span id=3D"gmail-m_8060179659594778536gmail-m_4803857818538028017gmai=
l-m_-156105540658111525cid:70A3E5A1-EF1B-4D99-B156-F8CD7369666A">&lt;Screen=
shot from 2019-05-08 08-46-52.png&gt;</span></div><div><br></div><div><div>=
My (naive!) interpretation of the above responses is that the FPGA may not =
actually have been programmed with the *.bit code even though iMPACT report=
ed success in programming.=C2=A0 Can someone assist me in understanding whe=
ther my interpretation is correct or not and, most importantly, suggest wha=
t I might try next to bring this N210 to life? =C2=A0</div><div><br></div><=
div>The =E2=80=9CPlease run:=E2=80=9D suggestion results in the =E2=80=9CRe=
ceived invalid reply 32 from device=E2=80=9D error.=C2=A0 It seems no matte=
r what I try the =E2=80=9CReceived invalid reply 32 from device=E2=80=9D Ru=
ntimeError is reported back when I try to load any new firmware/FPGA images=
. =C2=A0</div><div><br></div><div>Thanks!</div><div><br></div><div>Joe</div=
></div></div></div></div></div></blockquote></div><br></div></div>_________=
______________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</div></blockquote></div><br></div></div>__________________________________=
_____________<br>USRP-users mailing list<br><a href=3D"mailto:USRP-users@li=
sts.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a><br><a href=
=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" tar=
get=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ett=
us.com</a><br></div></blockquote></div><br></div></div></blockquote></div>

--000000000000dfa3780588663626--


--===============0847470708183197989==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0847470708183197989==--

