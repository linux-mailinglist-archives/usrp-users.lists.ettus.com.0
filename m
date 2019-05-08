Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E02FE1807D
	for <lists+usrp-users@lfdr.de>; Wed,  8 May 2019 21:34:45 +0200 (CEST)
Received: from [::1] (port=38406 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOSKy-0000DX-Vt; Wed, 08 May 2019 15:34:44 -0400
Received: from mail-io1-f41.google.com ([209.85.166.41]:42627)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <bistromath@gmail.com>)
 id 1hOSKQ-0008QH-7r
 for usrp-users@lists.ettus.com; Wed, 08 May 2019 15:34:40 -0400
Received: by mail-io1-f41.google.com with SMTP id g16so1639159iom.9
 for <usrp-users@lists.ettus.com>; Wed, 08 May 2019 12:33:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uyqci0niOYzAij6CwBKa1UXQBq4MJsE359P9+iDaRSk=;
 b=hINNnzrppDD9ZSnvOipHBM1kbi6n29hPd1s0MKgM5dEfxEXx4lQZ0/25/x0cOSDmC+
 0YqoCBnS68ImwwxUoQFiEGlmxBEIbXFPLhXUdA9K/7xLFgsjJaLpKw88C14VScPqiErS
 NMWuIvnDcUoVGa44gcivndj3kFwde7QtmZwaLEkXZGZ4AhrY6yNuVSdkSRj5DsC38iUT
 v2oDdkgtRa1ddEBqLJ7pLSlCZfcrlHWs6eQElXvV9b4UIx8SixyW7a5MNjI+i3gi6SgO
 oS4Q+s86r5lMIuzQ0Oy3W6XHtvk98jhc6eSVxK+qQZrldWtsOlRhcvKRm2orMyxQJZ4R
 zBJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uyqci0niOYzAij6CwBKa1UXQBq4MJsE359P9+iDaRSk=;
 b=ucTocXnmTTtdwJGKyc0+t5R/UJsVyOvEC9KIscTLFn7qmxZvhicXe83ADg6Lz3XmdZ
 4B0FFYIOqCzvoSvVQVhyBVK1jMaE5ZXbdCos2BZBFzlRug6jGVkDyRC6h6Snu86lyAop
 e7vw33dTwJjp1k85LPRuz76TrQl5q8jXv3y0yiT8i0D1lMD4trHTKi5lOc7b0K61yyFl
 ILUi2osILkDkxV2OwGJ9JAFJ1jlKBJ836SvFiH5UXZ1A18iQ4LLw8do0Jnp5P4txRA8e
 H7zkRP+AWiAIGtaRaDgJ2zMXjCVKlL1ZKV2DAFRB2abVdtTGHzHJeriNHquiQsqtE7RJ
 Q2bw==
X-Gm-Message-State: APjAAAXW4fe291goY3T8+Jy9j4k8F/GgwyY4Ue3I2BL474wtWn4vzxJX
 s9h3G8pSenOoTyXR0lnczICWB5OqYltPPpFABLU=
X-Google-Smtp-Source: APXvYqxqVCFzwwOsYYYgaQ5QVJDIW1JgV3jvB/n7QK94WSNtT2/y9P4V9hv9SnTPh8gghGTBx3CmmemhNGD5VKQLNr8=
X-Received: by 2002:a5d:9e01:: with SMTP id h1mr639241ioh.57.1557344009542;
 Wed, 08 May 2019 12:33:29 -0700 (PDT)
MIME-Version: 1.0
References: <556BBE2D-2BA6-40A3-BFF5-F5FA2351DB06@k5so.com>
 <BL0PR12MB2340E831A1782ED0958D6DBAAF320@BL0PR12MB2340.namprd12.prod.outlook.com>
 <84C6BD1A-2901-4FFC-834C-55B481EB7045@k5so.com>
 <CA+JMMq9oRqxDSVgyACAZucejC2Z3hKwciNCjX_YEJ6taCgUQ-g@mail.gmail.com>
In-Reply-To: <CA+JMMq9oRqxDSVgyACAZucejC2Z3hKwciNCjX_YEJ6taCgUQ-g@mail.gmail.com>
Date: Wed, 8 May 2019 12:33:18 -0700
Message-ID: <CA+JMMq8N5XP6Z9CDUO0JHZxJotHRPfQRRqsvJT5-XwZZVWRv+w@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============1059200510032745806=="
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

--===============1059200510032745806==
Content-Type: multipart/alternative; boundary="0000000000007b6013058865684b"

--0000000000007b6013058865684b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I see you got there already! If you're still having trouble, I'll see what
I can dig up over here.

On Wed, May 8, 2019 at 12:31 PM Nick Foster <bistromath@gmail.com> wrote:

> You might be best off reverting to a UHD old enough to support the bitfil=
e
> currently loaded on your N210. You could then bootstrap your N210 by usin=
g
> the old UHD to load a newer FPGA image.
>
> Otherwise, it's fairly simple to convert the binfiles (which still exist
> -- usrp_n210_r2_fpga.bin) to bitfiles. You can take the header from
> usrp_n210_r3_fpga.bit and just stick it onto the front of
> usrp_n210_r2_fpga.bin, and call the output usrp_n210_r2_fpga.bit. The
> header is everything up until FF FF FF FF AA 99 55 66.
>
> Lastly, the source is all there, so building using ISE should still be
> possible.
>
> Nick
>
> On Wed, May 8, 2019 at 9:57 AM Joe Martin via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Wow, okay; that=E2=80=99s disheartening.  Thanks much for the info, Jaso=
n.  Nope,
>> the Rev3 bit file doesn=E2=80=99t work; tried it.  I=E2=80=99ll see if t=
he support email
>> adr can be of use.
>>
>> Joe
>>
>> On May 8, 2019, at 10:44 AM, Jason Matusiak <
>> jason@gardettoengineering.com> wrote:
>>
>> Joe, I think you might be SOL.  If you take a look at this thread from m=
e
>> last year, I had no luck:
>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-April/0=
56223.html
>>
>>
>> Also, when I pinged Ettus directly, here is some info I got back from
>> them (from two different emails in the thread):
>> "we've been having some trouble tracking down Rev2 bitfiles, because no
>> one here was around when that was built. If you're trying to unbrick
>> them, Rev3 bitfiles might be OK, but I'm not completely sure.
>>
>> support@ettus.com might know more by know.
>> really sorry, but those Rev2s are just so old. And all the people from
>> that era seem to be gone. Sorry, can't help you with those Rev2s."
>>
>> ------------------------------
>> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Joe
>> Martin via USRP-users <usrp-users@lists.ettus.com>
>> *Sent:* Wednesday, May 8, 2019 11:55 AM
>> *To:* Joe Martin via USRP-users
>> *Subject:* [USRP-users] Bringing an elderly N210 to life by loading
>> current firmware/fpga images
>>
>> I am trying to bring an elderly N210 r2.0 with unknown history to life b=
y
>> loading current UHD firmware and fpga images from a 1Gigabit ethernet
>> connection on an AMD 2950X, 3.4GHz, 2TB SSD PC running Ubuntu 18.04 with
>> UHD 3.14.0.HEAD-0-gd20a7ae2 software but having difficulty.
>>
>> Following instructions in =E2=80=9CUSRP Hardware Driver and USRP Manual:=
 USRP2
>> and N2x0 Series=E2=80=9D:
>>
>> My initial action was to load the =E2=80=9Cusrp_n210_r4_fpga.bit" file i=
nto the
>> N210 xc3sd3400a FPGA using a Xilinx Platform Cable USB II JTAG programmi=
ng
>> cable from a Win7 PC running Xilinx ISE iMPACT, which reported =E2=80=9C=
Program
>> Succeeded=E2=80=9D for the action.  Ethernet LEDs on the N210 are variou=
sly lighted
>> showing activity on the connection port.
>>
>> With the N210 connected to the Linux PC 1Gbps ethernet port, issuing the
>> following commands result in the responses shown in the screenshot image
>> below:
>>
>> <Screenshot from 2019-05-08 08-46-52.png>
>>
>> My (naive!) interpretation of the above responses is that the FPGA may
>> not actually have been programmed with the *.bit code even though iMPACT
>> reported success in programming.  Can someone assist me in understanding
>> whether my interpretation is correct or not and, most importantly, sugge=
st
>> what I might try next to bring this N210 to life?
>>
>> The =E2=80=9CPlease run:=E2=80=9D suggestion results in the =E2=80=9CRec=
eived invalid reply 32
>> from device=E2=80=9D error.  It seems no matter what I try the =E2=80=9C=
Received invalid
>> reply 32 from device=E2=80=9D RuntimeError is reported back when I try t=
o load any
>> new firmware/FPGA images.
>>
>> Thanks!
>>
>> Joe
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--0000000000007b6013058865684b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I see you got there already! If you&#39;re still having tr=
ouble, I&#39;ll see what I can dig up over here.<br></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 8, 2019 at =
12:31 PM Nick Foster &lt;<a href=3D"mailto:bistromath@gmail.com">bistromath=
@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div>You might be best off reverting to a UHD o=
ld enough to support the bitfile currently loaded on your N210. You could t=
hen bootstrap your N210 by using the old UHD to load a newer FPGA image.<br=
></div><div><br></div><div>Otherwise, it&#39;s fairly simple to convert the=
 binfiles (which still exist -- usrp_n210_r2_fpga.bin) to bitfiles. You can=
 take the header from usrp_n210_r3_fpga.bit and just stick it onto the fron=
t of usrp_n210_r2_fpga.bin, and call the output usrp_n210_r2_fpga.bit. The =
header is everything up until FF FF FF FF AA 99 55 66.</div><div><br></div>=
<div>Lastly, the source is all there, so building using ISE should still be=
 possible.<br></div><div><br></div><div>Nick<br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 8, 2019 =
at 9:57 AM Joe Martin via USRP-users &lt;<a href=3D"mailto:usrp-users@lists=
.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div>Wow, okay; tha=
t=E2=80=99s disheartening.=C2=A0 Thanks much for the info, Jason.=C2=A0 Nop=
e, the Rev3 bit file doesn=E2=80=99t work; tried it.=C2=A0 I=E2=80=99ll see=
 if the support email adr can be of use. =C2=A0<div><br></div><div>Joe<br><=
div><br><blockquote type=3D"cite"><div>On May 8, 2019, at 10:44 AM, Jason M=
atusiak &lt;<a href=3D"mailto:jason@gardettoengineering.com" target=3D"_bla=
nk">jason@gardettoengineering.com</a>&gt; wrote:</div><br class=3D"gmail-m_=
4803857818538028017gmail-m_-156105540658111525Apple-interchange-newline"><d=
iv><div style=3D"font-style:normal;font-variant-caps:normal;font-weight:nor=
mal;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:n=
one;white-space:normal;word-spacing:0px;text-decoration:none;font-family:Ca=
libri,Arial,Helvetica,sans-serif;font-size:12pt">Joe, I think you might be =
SOL.=C2=A0 If you take a look at this thread from me last year, I had no lu=
ck:=C2=A0<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/2018-April/056223.html" target=3D"_blank">http://lists.ettus.com/piper=
mail/usrp-users_lists.ettus.com/2018-April/056223.html</a></div><div style=
=3D"font-style:normal;font-variant-caps:normal;font-weight:normal;letter-sp=
acing:normal;text-align:start;text-indent:0px;text-transform:none;white-spa=
ce:normal;word-spacing:0px;text-decoration:none;font-family:Calibri,Arial,H=
elvetica,sans-serif;font-size:12pt"><br></div><div style=3D"font-style:norm=
al;font-variant-caps:normal;font-weight:normal;letter-spacing:normal;text-a=
lign:start;text-indent:0px;text-transform:none;white-space:normal;word-spac=
ing:0px;text-decoration:none;font-family:Calibri,Arial,Helvetica,sans-serif=
;font-size:12pt"><br></div><div style=3D"font-style:normal;font-variant-cap=
s:normal;font-weight:normal;letter-spacing:normal;text-align:start;text-ind=
ent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decora=
tion:none;font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt">Al=
so, when I pinged Ettus directly, here is some info I got back from them (f=
rom two different emails in the thread):</div><div style=3D"font-style:norm=
al;font-variant-caps:normal;font-weight:normal;letter-spacing:normal;text-a=
lign:start;text-indent:0px;text-transform:none;white-space:normal;word-spac=
ing:0px;text-decoration:none;font-family:Calibri,Arial,Helvetica,sans-serif=
;font-size:12pt">&quot;<span style=3D"color:rgb(32,31,30);font-size:14.6667=
px;background-color:rgb(255,255,255);display:inline">we&#39;ve been having =
some trouble tracking down Rev2 bitfiles, because no</span><br style=3D"col=
or:rgb(32,31,30);font-size:14.6667px;background-color:rgb(255,255,255)"><sp=
an style=3D"color:rgb(32,31,30);font-size:14.6667px;background-color:rgb(25=
5,255,255);display:inline">one here was around when that was built. If you&=
#39;re trying to unbrick</span><br style=3D"color:rgb(32,31,30);font-size:1=
4.6667px;background-color:rgb(255,255,255)"><span style=3D"color:rgb(32,31,=
30);font-size:14.6667px;background-color:rgb(255,255,255);display:inline">t=
hem, Rev3 bitfiles might be OK, but I&#39;m not completely sure.</span></di=
v><div style=3D"font-style:normal;font-variant-caps:normal;font-weight:norm=
al;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:no=
ne;white-space:normal;word-spacing:0px;text-decoration:none;font-family:Cal=
ibri,Arial,Helvetica,sans-serif;font-size:12pt"><br style=3D"color:rgb(32,3=
1,30);font-size:14.6667px;background-color:rgb(255,255,255)"><span style=3D=
"color:rgb(32,31,30);font-size:14.6667px;background-color:rgb(255,255,255);=
display:inline"><a href=3D"mailto:support@ettus.com" target=3D"_blank">supp=
ort@ettus.com</a><span class=3D"gmail-m_4803857818538028017gmail-m_-1561055=
40658111525Apple-converted-space">=C2=A0</span>might know more by know.</sp=
an></div><div style=3D"font-style:normal;font-variant-caps:normal;font-weig=
ht:normal;letter-spacing:normal;text-align:start;text-indent:0px;text-trans=
form:none;white-space:normal;word-spacing:0px;text-decoration:none;font-fam=
ily:Calibri,Arial,Helvetica,sans-serif;font-size:12pt"><span style=3D"color=
:rgb(32,31,30);font-size:14.6667px;background-color:rgb(255,255,255);displa=
y:inline">really sorry, but those Rev2s are just so old. And all the people=
 from</span><br style=3D"color:rgb(32,31,30);font-size:14.6667px;background=
-color:rgb(255,255,255)"><span style=3D"color:rgb(32,31,30);font-size:14.66=
67px;background-color:rgb(255,255,255);display:inline">that era seem to be =
gone. Sorry, can&#39;t help you with those Rev2s.&quot;</span></div><div id=
=3D"gmail-m_4803857818538028017gmail-m_-156105540658111525Signature" style=
=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-variant-cap=
s:normal;font-weight:normal;letter-spacing:normal;text-align:start;text-ind=
ent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decora=
tion:none"><div><div id=3D"gmail-m_4803857818538028017gmail-m_-156105540658=
111525appendonsend"></div><div style=3D"font-family:Calibri,Arial,Helvetica=
,sans-serif;font-size:12pt"><br></div><hr style=3D"display:inline-block;wid=
th:1284.77px"><div id=3D"gmail-m_4803857818538028017gmail-m_-15610554065811=
1525divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=3D"Calib=
ri, sans-serif"><b>From:</b><span class=3D"gmail-m_4803857818538028017gmail=
-m_-156105540658111525Apple-converted-space">=C2=A0</span>USRP-users &lt;<a=
 href=3D"mailto:usrp-users-bounces@lists.ettus.com" target=3D"_blank">usrp-=
users-bounces@lists.ettus.com</a>&gt; on behalf of Joe Martin via USRP-user=
s &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-=
users@lists.ettus.com</a>&gt;<br><b>Sent:</b><span class=3D"gmail-m_4803857=
818538028017gmail-m_-156105540658111525Apple-converted-space">=C2=A0</span>=
Wednesday, May 8, 2019 11:55 AM<br><b>To:</b><span class=3D"gmail-m_4803857=
818538028017gmail-m_-156105540658111525Apple-converted-space">=C2=A0</span>=
Joe Martin via USRP-users<br><b>Subject:</b><span class=3D"gmail-m_48038578=
18538028017gmail-m_-156105540658111525Apple-converted-space">=C2=A0</span>[=
USRP-users] Bringing an elderly N210 to life by loading current firmware/fp=
ga images</font><div>=C2=A0</div></div><div>I am trying to bring an elderly=
 N210 r2.0 with unknown history to life by loading current UHD firmware and=
 fpga images from a 1Gigabit ethernet connection on an AMD 2950X, 3.4GHz, 2=
TB SSD PC running Ubuntu 18.04 with UHD 3.14.0.HEAD-0-gd20a7ae2 software bu=
t having difficulty.=C2=A0<div><br></div><div>Following instructions in =E2=
=80=9CUSRP Hardware Driver and USRP Manual: USRP2 and N2x0 Series=E2=80=9D:=
</div><div><br></div><div>My initial action was to load the =E2=80=9Cusrp_n=
210_r4_fpga.bit&quot; file into the N210 xc3sd3400a FPGA using a Xilinx Pla=
tform Cable USB II JTAG programming cable from a Win7 PC running Xilinx ISE=
 iMPACT, which reported =E2=80=9CProgram Succeeded=E2=80=9D for the action.=
=C2=A0 Ethernet LEDs on the N210 are variously lighted showing activity on =
the connection port.</div><div><br></div><div>With the N210 connected to th=
e Linux PC 1Gbps ethernet port, issuing the following commands result in th=
e responses shown in the screenshot image below:=C2=A0</div><div><br></div>=
<div><span id=3D"gmail-m_4803857818538028017gmail-m_-156105540658111525cid:=
70A3E5A1-EF1B-4D99-B156-F8CD7369666A">&lt;Screenshot from 2019-05-08 08-46-=
52.png&gt;</span></div><div><br></div><div><div>My (naive!) interpretation =
of the above responses is that the FPGA may not actually have been programm=
ed with the *.bit code even though iMPACT reported success in programming.=
=C2=A0 Can someone assist me in understanding whether my interpretation is =
correct or not and, most importantly, suggest what I might try next to brin=
g this N210 to life? =C2=A0</div><div><br></div><div>The =E2=80=9CPlease ru=
n:=E2=80=9D suggestion results in the =E2=80=9CReceived invalid reply 32 fr=
om device=E2=80=9D error.=C2=A0 It seems no matter what I try the =E2=80=9C=
Received invalid reply 32 from device=E2=80=9D RuntimeError is reported bac=
k when I try to load any new firmware/FPGA images. =C2=A0</div><div><br></d=
iv><div>Thanks!</div><div><br></div><div>Joe</div></div></div></div></div><=
/div></blockquote></div><br></div></div>___________________________________=
____________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--0000000000007b6013058865684b--


--===============1059200510032745806==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1059200510032745806==--

