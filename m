Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D331E181B6
	for <lists+usrp-users@lfdr.de>; Wed,  8 May 2019 23:41:50 +0200 (CEST)
Received: from [::1] (port=38324 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOUJx-0004y8-9l; Wed, 08 May 2019 17:41:49 -0400
Received: from mail-lj1-f170.google.com ([209.85.208.170]:34939)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <robin.coxe@ettus.com>)
 id 1hOUJO-0004hA-6y
 for usrp-users@lists.ettus.com; Wed, 08 May 2019 17:41:44 -0400
Received: by mail-lj1-f170.google.com with SMTP id m20so222616lji.2
 for <usrp-users@lists.ettus.com>; Wed, 08 May 2019 14:40:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iFHcQgW+Qwl09OZCw7uaLlL1TnWeVd6NbAnhYRDqtr4=;
 b=KXJipKsNw15bGrkxajzLFEEi7ITZSOSud8r9SUgzZ1RtZNDMD5fxSur3h1/Jnd1mr9
 I6RZKBJ9ytNQUiBfFsQpn67UaDskiZAZGjX+LF7mO9UKObm6UPFFWTDm5oW6MiftHQJ2
 XPDlbh3TKDl4czz4HwoV+rsXtRcYgs3s6012moeucwtClpIswUotOyg52HMux41DOJqf
 U/sgP2oOS30nA4wqRLfRXPLpvdRMEHtpu07P/u77sDahHo5ZamzXUFV2mNMYOlFwFULK
 Hg72wDmBGaGUNGwPI+9JpnYcLQ51T0V91nxgUhA/IodeOeZMFOpNZSWHkDD8c82eJ/b5
 GvNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iFHcQgW+Qwl09OZCw7uaLlL1TnWeVd6NbAnhYRDqtr4=;
 b=GPx7TZ+JbYh5/4BIcNW8aYpMQEj5ELYqpPmBYs6fnwT1moAiD5FdSXloYDII4ZNvL+
 NaAQIaHQyy22UE+PEpj6oSMByNcFPA6gvw/ry/tTFdOipfCBop+OD5FyR+1oFhhH4i4T
 GH4janLLZ9UBo1OrztZqn7l8PIzWBqog0VJzk5tX9Z4TPnAzfsjC/3urh4ueJ03cQCP4
 4RdHXP3iDew93eo9eOnLuQZH/NwguTzigkCP2n1ieJVYB/M6f4qQSptKE1g4Bqk6VNpc
 0Lwc5xy+7CJ/82XKN3u03dztxH5M67rNIWSp+BoFtU9iCpx7lxZbYVBGQnd5emC1A60n
 p2Eg==
X-Gm-Message-State: APjAAAXLl+paj4tk1nEFAfMM9PzK2BYwxZHgl4qwj7LCE+bjXA5l6zHA
 L1j8AyjoGZ0LLll5R40PxUIZqDl6H4sFCMXw2utMZz2p1OynvmRs
X-Google-Smtp-Source: APXvYqxCmjOpXuqSGNHBy33zge1aalfR3YYMS5APKyA4D5fnAIK8BUsjlhgqL0SxXm0s0WTTyPKYeH6OjoypSuUNjMM=
X-Received: by 2002:a2e:1311:: with SMTP id 17mr43417ljt.75.1557351632803;
 Wed, 08 May 2019 14:40:32 -0700 (PDT)
MIME-Version: 1.0
References: <556BBE2D-2BA6-40A3-BFF5-F5FA2351DB06@k5so.com>
 <BL0PR12MB2340E831A1782ED0958D6DBAAF320@BL0PR12MB2340.namprd12.prod.outlook.com>
 <84C6BD1A-2901-4FFC-834C-55B481EB7045@k5so.com>
 <CA+JMMq9oRqxDSVgyACAZucejC2Z3hKwciNCjX_YEJ6taCgUQ-g@mail.gmail.com>
 <CA+JMMq8N5XP6Z9CDUO0JHZxJotHRPfQRRqsvJT5-XwZZVWRv+w@mail.gmail.com>
 <A0F0F533-AE85-4802-A676-EA4C39C9372F@k5so.com>
 <B98CD290-9E92-49CE-AD7D-E19FE82B5657@k5so.com>
 <CA+JMMq9+WVXGDRwBd9WAcwXHXDynDsUYy4nOXuryttxvNKbXCA@mail.gmail.com>
 <19BFE8B3-662A-4DC0-BB72-557E7495F6D0@k5so.com>
 <5F41CEE9-58DF-4868-89C2-5F88876803DF@k5so.com>
In-Reply-To: <5F41CEE9-58DF-4868-89C2-5F88876803DF@k5so.com>
Date: Wed, 8 May 2019 14:40:20 -0700
Message-ID: <CAGVTi8VOeNG5B9X-WaMQrvbxkt96UFhm5a6-++9znYCzexfRtQ@mail.gmail.com>
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
From: Robin Coxe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Robin Coxe <robin.coxe@ettus.com>
Cc: Joe Martin via USRP-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1814185842101239859=="
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

--===============1814185842101239859==
Content-Type: multipart/alternative; boundary="000000000000dd2ac80588672efd"

--000000000000dd2ac80588672efd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You could try using the .deb or .rpm pre-built binaries if you're running
on Linux.  See, for instance:
http://files.ettus.com/binaries/uhd/uhd_003.004.000-release/

On Wed, May 8, 2019 at 2:09 PM Joe Martin via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I=E2=80=99ve successfully built UHD v3.9.0 but it has the same error as 3=
.14.0 did
> before (=E2=80=9CReceived invalid reply 32 from device=E2=80=9D) and uhd_=
usrp_probe still
> complains that it is expecting compatibility number 11 but is receiving 6=
.
> So I think that means I need an earlier version of UHD than 3.9.0.
>
> I will dig into the earliest version in the git tag -l, namely
> 003_007_002_rc1, that would not build without errors and try to work out
> the compiler errors then.  Unless someone has a better idea to try.
> Thanks!
>
> Regards,
>
> Joe
>
> On May 8, 2019, at 2:40 PM, Joe Martin via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Okay, thanks, that=E2=80=99s what I thought but that isn=E2=80=99t useful=
 for me until I
> find a UHD version that can communicate with it.  I=E2=80=99ve been tryin=
g to build
> older UHD versions from 003_007_002_rc1 forward but all so far fail to
> build due to compiler errors.  Am up to 003_008_005_rc1 now, moving forwa=
rd
> until I can successfully build one to try.  Are there any old pre-built
> versions I could simply try without having to build each one myself?
>
> Joe
>
> On May 8, 2019, at 2:31 PM, Nick Foster <bistromath@gmail.com> wrote:
>
> Yes, code loaded over JTAG is gone at next boot. I can't think of an easy
> way to figure out what image is loaded other than asking UHD to query it
> for FPGA compat number.
>
> On Wed, May 8, 2019 at 1:04 PM Joe Martin <k5so@k5so.com> wrote:
>
>> I guess the proper way to ask is =E2=80=9CIs there a way to determine wh=
at fpga
>> .bin file is in the N210?=E2=80=9D, since the .bit file that I loaded in=
to the fpga
>> is volatile code that disappears upon power cycling to be reloaded from =
an
>> EEPROM or something, yes?
>>
>> Joe
>>
>> On May 8, 2019, at 1:55 PM, Joe Martin via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>> Hi Nick,
>>
>> Thanks for the comments.  Is there a way to determine what bit file is
>> currently in the N210?  If so, how please?
>>
>> Joe
>>
>> On May 8, 2019, at 1:33 PM, Nick Foster <bistromath@gmail.com> wrote:
>>
>> I see you got there already! If you're still having trouble, I'll see
>> what I can dig up over here.
>>
>> On Wed, May 8, 2019 at 12:31 PM Nick Foster <bistromath@gmail.com> wrote=
:
>>
>>> You might be best off reverting to a UHD old enough to support the
>>> bitfile currently loaded on your N210. You could then bootstrap your N2=
10
>>> by using the old UHD to load a newer FPGA image.
>>>
>>> Otherwise, it's fairly simple to convert the binfiles (which still exis=
t
>>> -- usrp_n210_r2_fpga.bin) to bitfiles. You can take the header from
>>> usrp_n210_r3_fpga.bit and just stick it onto the front of
>>> usrp_n210_r2_fpga.bin, and call the output usrp_n210_r2_fpga.bit. The
>>> header is everything up until FF FF FF FF AA 99 55 66.
>>>
>>> Lastly, the source is all there, so building using ISE should still be
>>> possible.
>>>
>>> Nick
>>>
>>> On Wed, May 8, 2019 at 9:57 AM Joe Martin via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>>> Wow, okay; that=E2=80=99s disheartening.  Thanks much for the info, Ja=
son.
>>>> Nope, the Rev3 bit file doesn=E2=80=99t work; tried it.  I=E2=80=99ll =
see if the support
>>>> email adr can be of use.
>>>>
>>>> Joe
>>>>
>>>> On May 8, 2019, at 10:44 AM, Jason Matusiak <
>>>> jason@gardettoengineering.com> wrote:
>>>>
>>>> Joe, I think you might be SOL.  If you take a look at this thread from
>>>> me last year, I had no luck:
>>>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-April=
/056223.html
>>>>
>>>>
>>>> Also, when I pinged Ettus directly, here is some info I got back from
>>>> them (from two different emails in the thread):
>>>> "we've been having some trouble tracking down Rev2 bitfiles, because n=
o
>>>> one here was around when that was built. If you're trying to unbrick
>>>> them, Rev3 bitfiles might be OK, but I'm not completely sure.
>>>>
>>>> support@ettus.com might know more by know.
>>>> really sorry, but those Rev2s are just so old. And all the people from
>>>> that era seem to be gone. Sorry, can't help you with those Rev2s."
>>>>
>>>> ------------------------------
>>>> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of
>>>> Joe Martin via USRP-users <usrp-users@lists.ettus.com>
>>>> *Sent:* Wednesday, May 8, 2019 11:55 AM
>>>> *To:* Joe Martin via USRP-users
>>>> *Subject:* [USRP-users] Bringing an elderly N210 to life by loading
>>>> current firmware/fpga images
>>>>
>>>> I am trying to bring an elderly N210 r2.0 with unknown history to life
>>>> by loading current UHD firmware and fpga images from a 1Gigabit ethern=
et
>>>> connection on an AMD 2950X, 3.4GHz, 2TB SSD PC running Ubuntu 18.04 wi=
th
>>>> UHD 3.14.0.HEAD-0-gd20a7ae2 software but having difficulty.
>>>>
>>>> Following instructions in =E2=80=9CUSRP Hardware Driver and USRP Manua=
l: USRP2
>>>> and N2x0 Series=E2=80=9D:
>>>>
>>>> My initial action was to load the =E2=80=9Cusrp_n210_r4_fpga.bit" file=
 into the
>>>> N210 xc3sd3400a FPGA using a Xilinx Platform Cable USB II JTAG program=
ming
>>>> cable from a Win7 PC running Xilinx ISE iMPACT, which reported =E2=80=
=9CProgram
>>>> Succeeded=E2=80=9D for the action.  Ethernet LEDs on the N210 are vari=
ously lighted
>>>> showing activity on the connection port.
>>>>
>>>> With the N210 connected to the Linux PC 1Gbps ethernet port, issuing
>>>> the following commands result in the responses shown in the screenshot
>>>> image below:
>>>>
>>>> <Screenshot from 2019-05-08 08-46-52.png>
>>>>
>>>> My (naive!) interpretation of the above responses is that the FPGA may
>>>> not actually have been programmed with the *.bit code even though iMPA=
CT
>>>> reported success in programming.  Can someone assist me in understandi=
ng
>>>> whether my interpretation is correct or not and, most importantly, sug=
gest
>>>> what I might try next to bring this N210 to life?
>>>>
>>>> The =E2=80=9CPlease run:=E2=80=9D suggestion results in the =E2=80=9CR=
eceived invalid reply 32
>>>> from device=E2=80=9D error.  It seems no matter what I try the =E2=80=
=9CReceived invalid
>>>> reply 32 from device=E2=80=9D RuntimeError is reported back when I try=
 to load any
>>>> new firmware/FPGA images.
>>>>
>>>> Thanks!
>>>>
>>>> Joe
>>>>
>>>>
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>>
>>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000dd2ac80588672efd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You could try using the .deb or .rpm pre-built binaries if=
 you&#39;re running on Linux.=C2=A0 See, for instance:<div><a href=3D"http:=
//files.ettus.com/binaries/uhd/uhd_003.004.000-release/">http://files.ettus=
.com/binaries/uhd/uhd_003.004.000-release/</a>=C2=A0=C2=A0<br></div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed,=
 May 8, 2019 at 2:09 PM Joe Martin via USRP-users &lt;<a href=3D"mailto:usr=
p-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div style=3D"overflow-w=
rap: break-word;">I=E2=80=99ve successfully built UHD v3.9.0 but it has the=
 same error as 3.14.0 did before (=E2=80=9CReceived invalid reply 32 from d=
evice=E2=80=9D) and uhd_usrp_probe still complains that it is expecting com=
patibility number 11 but is receiving 6.=C2=A0 So I think that means I need=
 an earlier version of UHD than 3.9.0. =C2=A0<div><br></div><div>I will dig=
 into the earliest version in the git tag -l, namely 003_007_002_rc1, that =
would not build without errors and try to work out the compiler errors then=
.=C2=A0 Unless someone has a better idea to try. =C2=A0 Thanks!<div><br></d=
iv><div>Regards,=C2=A0</div><div><br></div><div>Joe<br><div><br><blockquote=
 type=3D"cite"><div>On May 8, 2019, at 2:40 PM, Joe Martin via USRP-users &=
lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-use=
rs@lists.ettus.com</a>&gt; wrote:</div><br class=3D"gmail-m_855281972317889=
7174Apple-interchange-newline"><div><div style=3D"overflow-wrap: break-word=
;">Okay, thanks, that=E2=80=99s what I thought but that isn=E2=80=99t usefu=
l for me until I find a UHD version that can communicate with it.=C2=A0 I=
=E2=80=99ve been trying to build older UHD versions from 003_007_002_rc1 fo=
rward but all so far fail to build due to compiler errors.=C2=A0 Am up to 0=
03_008_005_rc1 now, moving forward until I can successfully build one to tr=
y.=C2=A0 Are there any old pre-built versions I could simply try without ha=
ving to build each one myself?<div><br></div><div>Joe<br><div><br><blockquo=
te type=3D"cite"><div>On May 8, 2019, at 2:31 PM, Nick Foster &lt;<a href=
=3D"mailto:bistromath@gmail.com" target=3D"_blank">bistromath@gmail.com</a>=
&gt; wrote:</div><br class=3D"gmail-m_8552819723178897174Apple-interchange-=
newline"><div><div dir=3D"ltr">Yes, code loaded over JTAG is gone at next b=
oot. I can&#39;t think of an easy way to figure out what image is loaded ot=
her than asking UHD to query it for FPGA compat number.<br></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 8, 2=
019 at 1:04 PM Joe Martin &lt;<a href=3D"mailto:k5so@k5so.com" target=3D"_b=
lank">k5so@k5so.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div>I guess the proper way to ask is =E2=80=9CIs there =
a way to determine what fpga .bin file is in the N210?=E2=80=9D, since the =
.bit file that I loaded into the fpga is volatile code that disappears upon=
 power cycling to be reloaded from an EEPROM or something, yes?<div><br></d=
iv><div>Joe<br><div><br><blockquote type=3D"cite"><div>On May 8, 2019, at 1=
:55 PM, Joe Martin via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.et=
tus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:</div><=
br class=3D"gmail-m_8552819723178897174gmail-m_8060179659594778536Apple-int=
erchange-newline"><div><div>Hi Nick,=C2=A0<div><br></div><div>Thanks for th=
e comments.=C2=A0 Is there a way to determine what bit file is currently in=
 the N210?=C2=A0 If so, how please?</div><div><br></div><div>Joe<br><div><b=
r><blockquote type=3D"cite"><div>On May 8, 2019, at 1:33 PM, Nick Foster &l=
t;<a href=3D"mailto:bistromath@gmail.com" target=3D"_blank">bistromath@gmai=
l.com</a>&gt; wrote:</div><br class=3D"gmail-m_8552819723178897174gmail-m_8=
060179659594778536Apple-interchange-newline"><div><div dir=3D"ltr">I see yo=
u got there already! If you&#39;re still having trouble, I&#39;ll see what =
I can dig up over here.<br></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Wed, May 8, 2019 at 12:31 PM Nick Foster &lt;=
<a href=3D"mailto:bistromath@gmail.com" target=3D"_blank">bistromath@gmail.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr"><div>You might be best off reverting to a UHD old enoug=
h to support the bitfile currently loaded on your N210. You could then boot=
strap your N210 by using the old UHD to load a newer FPGA image.<br></div><=
div><br></div><div>Otherwise, it&#39;s fairly simple to convert the binfile=
s (which still exist -- usrp_n210_r2_fpga.bin) to bitfiles. You can take th=
e header from usrp_n210_r3_fpga.bit and just stick it onto the front of usr=
p_n210_r2_fpga.bin, and call the output usrp_n210_r2_fpga.bit. The header i=
s everything up until FF FF FF FF AA 99 55 66.</div><div><br></div><div>Las=
tly, the source is all there, so building using ISE should still be possibl=
e.<br></div><div><br></div><div>Nick<br></div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 8, 2019 at 9:57 A=
M Joe Martin via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div>Wow, okay; that=E2=80=
=99s disheartening.=C2=A0 Thanks much for the info, Jason.=C2=A0 Nope, the =
Rev3 bit file doesn=E2=80=99t work; tried it.=C2=A0 I=E2=80=99ll see if the=
 support email adr can be of use. =C2=A0<div><br></div><div>Joe<br><div><br=
><blockquote type=3D"cite"><div>On May 8, 2019, at 10:44 AM, Jason Matusiak=
 &lt;<a href=3D"mailto:jason@gardettoengineering.com" target=3D"_blank">jas=
on@gardettoengineering.com</a>&gt; wrote:</div><br class=3D"gmail-m_8552819=
723178897174gmail-m_8060179659594778536gmail-m_4803857818538028017gmail-m_-=
156105540658111525Apple-interchange-newline"><div><div style=3D"font-style:=
normal;font-variant-caps:normal;font-weight:normal;letter-spacing:normal;te=
xt-align:start;text-indent:0px;text-transform:none;white-space:normal;word-=
spacing:0px;text-decoration:none;font-family:Calibri,Arial,Helvetica,sans-s=
erif;font-size:12pt">Joe, I think you might be SOL.=C2=A0 If you take a loo=
k at this thread from me last year, I had no luck:=C2=A0<a href=3D"http://l=
ists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-April/056223.html"=
 target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.=
com/2018-April/056223.html</a></div><div style=3D"font-style:normal;font-va=
riant-caps:normal;font-weight:normal;letter-spacing:normal;text-align:start=
;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;te=
xt-decoration:none;font-family:Calibri,Arial,Helvetica,sans-serif;font-size=
:12pt"><br></div><div style=3D"font-style:normal;font-variant-caps:normal;f=
ont-weight:normal;letter-spacing:normal;text-align:start;text-indent:0px;te=
xt-transform:none;white-space:normal;word-spacing:0px;text-decoration:none;=
font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt"><br></div><d=
iv style=3D"font-style:normal;font-variant-caps:normal;font-weight:normal;l=
etter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;w=
hite-space:normal;word-spacing:0px;text-decoration:none;font-family:Calibri=
,Arial,Helvetica,sans-serif;font-size:12pt">Also, when I pinged Ettus direc=
tly, here is some info I got back from them (from two different emails in t=
he thread):</div><div style=3D"font-style:normal;font-variant-caps:normal;f=
ont-weight:normal;letter-spacing:normal;text-align:start;text-indent:0px;te=
xt-transform:none;white-space:normal;word-spacing:0px;text-decoration:none;=
font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt">&quot;<span =
style=3D"color:rgb(32,31,30);font-size:14.6667px;background-color:rgb(255,2=
55,255);display:inline">we&#39;ve been having some trouble tracking down Re=
v2 bitfiles, because no</span><br style=3D"color:rgb(32,31,30);font-size:14=
.6667px;background-color:rgb(255,255,255)"><span style=3D"color:rgb(32,31,3=
0);font-size:14.6667px;background-color:rgb(255,255,255);display:inline">on=
e here was around when that was built. If you&#39;re trying to unbrick</spa=
n><br style=3D"color:rgb(32,31,30);font-size:14.6667px;background-color:rgb=
(255,255,255)"><span style=3D"color:rgb(32,31,30);font-size:14.6667px;backg=
round-color:rgb(255,255,255);display:inline">them, Rev3 bitfiles might be O=
K, but I&#39;m not completely sure.</span></div><div style=3D"font-style:no=
rmal;font-variant-caps:normal;font-weight:normal;letter-spacing:normal;text=
-align:start;text-indent:0px;text-transform:none;white-space:normal;word-sp=
acing:0px;text-decoration:none;font-family:Calibri,Arial,Helvetica,sans-ser=
if;font-size:12pt"><br style=3D"color:rgb(32,31,30);font-size:14.6667px;bac=
kground-color:rgb(255,255,255)"><span style=3D"color:rgb(32,31,30);font-siz=
e:14.6667px;background-color:rgb(255,255,255);display:inline"><a href=3D"ma=
ilto:support@ettus.com" target=3D"_blank">support@ettus.com</a><span class=
=3D"gmail-m_8552819723178897174gmail-m_8060179659594778536gmail-m_480385781=
8538028017gmail-m_-156105540658111525Apple-converted-space">=C2=A0</span>mi=
ght know more by know.</span></div><div style=3D"font-style:normal;font-var=
iant-caps:normal;font-weight:normal;letter-spacing:normal;text-align:start;=
text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;tex=
t-decoration:none;font-family:Calibri,Arial,Helvetica,sans-serif;font-size:=
12pt"><span style=3D"color:rgb(32,31,30);font-size:14.6667px;background-col=
or:rgb(255,255,255);display:inline">really sorry, but those Rev2s are just =
so old. And all the people from</span><br style=3D"color:rgb(32,31,30);font=
-size:14.6667px;background-color:rgb(255,255,255)"><span style=3D"color:rgb=
(32,31,30);font-size:14.6667px;background-color:rgb(255,255,255);display:in=
line">that era seem to be gone. Sorry, can&#39;t help you with those Rev2s.=
&quot;</span></div><div id=3D"gmail-m_8552819723178897174gmail-m_8060179659=
594778536gmail-m_4803857818538028017gmail-m_-156105540658111525Signature" s=
tyle=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-variant=
-caps:normal;font-weight:normal;letter-spacing:normal;text-align:start;text=
-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-de=
coration:none"><div><div id=3D"gmail-m_8552819723178897174gmail-m_806017965=
9594778536gmail-m_4803857818538028017gmail-m_-156105540658111525appendonsen=
d"></div><div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-=
size:12pt"><br></div><hr style=3D"display:inline-block;width:1284.77px"><di=
v id=3D"gmail-m_8552819723178897174gmail-m_8060179659594778536gmail-m_48038=
57818538028017gmail-m_-156105540658111525divRplyFwdMsg" dir=3D"ltr"><font s=
tyle=3D"font-size:11pt" face=3D"Calibri, sans-serif"><b>From:</b><span clas=
s=3D"gmail-m_8552819723178897174gmail-m_8060179659594778536gmail-m_48038578=
18538028017gmail-m_-156105540658111525Apple-converted-space">=C2=A0</span>U=
SRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.ettus.com" target=
=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt; on behalf of Joe Mar=
tin via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br><b>Sent:</b><span class=
=3D"gmail-m_8552819723178897174gmail-m_8060179659594778536gmail-m_480385781=
8538028017gmail-m_-156105540658111525Apple-converted-space">=C2=A0</span>We=
dnesday, May 8, 2019 11:55 AM<br><b>To:</b><span class=3D"gmail-m_855281972=
3178897174gmail-m_8060179659594778536gmail-m_4803857818538028017gmail-m_-15=
6105540658111525Apple-converted-space">=C2=A0</span>Joe Martin via USRP-use=
rs<br><b>Subject:</b><span class=3D"gmail-m_8552819723178897174gmail-m_8060=
179659594778536gmail-m_4803857818538028017gmail-m_-156105540658111525Apple-=
converted-space">=C2=A0</span>[USRP-users] Bringing an elderly N210 to life=
 by loading current firmware/fpga images</font><div>=C2=A0</div></div><div>=
I am trying to bring an elderly N210 r2.0 with unknown history to life by l=
oading current UHD firmware and fpga images from a 1Gigabit ethernet connec=
tion on an AMD 2950X, 3.4GHz, 2TB SSD PC running Ubuntu 18.04 with UHD 3.14=
.0.HEAD-0-gd20a7ae2 software but having difficulty.=C2=A0<div><br></div><di=
v>Following instructions in =E2=80=9CUSRP Hardware Driver and USRP Manual: =
USRP2 and N2x0 Series=E2=80=9D:</div><div><br></div><div>My initial action =
was to load the =E2=80=9Cusrp_n210_r4_fpga.bit&quot; file into the N210 xc3=
sd3400a FPGA using a Xilinx Platform Cable USB II JTAG programming cable fr=
om a Win7 PC running Xilinx ISE iMPACT, which reported =E2=80=9CProgram Suc=
ceeded=E2=80=9D for the action.=C2=A0 Ethernet LEDs on the N210 are various=
ly lighted showing activity on the connection port.</div><div><br></div><di=
v>With the N210 connected to the Linux PC 1Gbps ethernet port, issuing the =
following commands result in the responses shown in the screenshot image be=
low:=C2=A0</div><div><br></div><div><span id=3D"gmail-m_8552819723178897174=
gmail-m_8060179659594778536gmail-m_4803857818538028017gmail-m_-156105540658=
111525cid:70A3E5A1-EF1B-4D99-B156-F8CD7369666A">&lt;Screenshot from 2019-05=
-08 08-46-52.png&gt;</span></div><div><br></div><div><div>My (naive!) inter=
pretation of the above responses is that the FPGA may not actually have bee=
n programmed with the *.bit code even though iMPACT reported success in pro=
gramming.=C2=A0 Can someone assist me in understanding whether my interpret=
ation is correct or not and, most importantly, suggest what I might try nex=
t to bring this N210 to life? =C2=A0</div><div><br></div><div>The =E2=80=9C=
Please run:=E2=80=9D suggestion results in the =E2=80=9CReceived invalid re=
ply 32 from device=E2=80=9D error.=C2=A0 It seems no matter what I try the =
=E2=80=9CReceived invalid reply 32 from device=E2=80=9D RuntimeError is rep=
orted back when I try to load any new firmware/FPGA images. =C2=A0</div><di=
v><br></div><div>Thanks!</div><div><br></div><div>Joe</div></div></div></di=
v></div></div></blockquote></div><br></div></div>__________________________=
_____________________<br>
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
</div></blockquote></div><br></div></div>__________________________________=
_____________<br>USRP-users mailing list<br><a href=3D"mailto:USRP-users@li=
sts.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a><br><a href=
=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" tar=
get=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ett=
us.com</a><br></div></blockquote></div><br></div></div></div>______________=
_________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000dd2ac80588672efd--


--===============1814185842101239859==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1814185842101239859==--

