Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B8317F84
	for <lists+usrp-users@lfdr.de>; Wed,  8 May 2019 20:08:40 +0200 (CEST)
Received: from [::1] (port=38424 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOQzf-0001rJ-Cu; Wed, 08 May 2019 14:08:39 -0400
Received: from mail-lf1-f45.google.com ([209.85.167.45]:42350)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <robin.coxe@ettus.com>)
 id 1hOQz7-0001hL-8I
 for usrp-users@lists.ettus.com; Wed, 08 May 2019 14:08:35 -0400
Received: by mail-lf1-f45.google.com with SMTP id w23so15199586lfc.9
 for <usrp-users@lists.ettus.com>; Wed, 08 May 2019 11:07:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=txgfKF/IZkdV73AAOsy1H/B9tIkI/GjIs/3tslLJWBU=;
 b=ry63vMDhJL3t8ooAvL6xmE7y3uG7CHumkwbbXDA6ekKpSv1cG+nX84vKtf5S9Calhn
 ciXsXWiL3AdHh7iLDXAszuS1vlCKx0JruXheGHRTQl2eueRMuDZfNBruPipOZw3vyXS9
 tB1LEy3zCatWqG/dxwjlheAm9dIhTivjVwfhYEJ1f9FcjygvLIoJ/9ru9+vtMhI1mcye
 6hwAqSN7MDVwFJ07XH1NNahk9ktME2TpEEUcULLdZfWn5Sf6+2PSHkzyoG4DklJH+Mn8
 qmLwHyfdzHYBCwuwCqFsweIDMNY2vUnmUUm5XOfzRJthVdR4HKCpn/wbJugWpVqp1yQ8
 L4xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=txgfKF/IZkdV73AAOsy1H/B9tIkI/GjIs/3tslLJWBU=;
 b=mzxbfYjvTjURsMgqQT+oAI8fDjHRSfHfDt9Q764VbYZ0I4tXBMkm7XK5oWGrw2HO+D
 VYTnJOZ72dNOXQjGV7zz9vWp+6KW/yzlwdnFENE3qIP5VjCgaSQwfZRe8WbRncNDwOYZ
 sx395kR795jne4CxagGH/b075vds5OeJHbv02tec2BZ8OSdBOt8XKBC5k2a64DT5ImuU
 Jp8F3s4oLy2h+IJFXnt4gVxXn5+wzKND5Dqqq03hwbP4hcdqA1d4UL35A1Py2sxafsh7
 1x4u8poBUVz3MJhLTX/CEpDQXSyV0wfNsty+02TH4ZOf7DElz0mGDHC5qtx0qVAKngoD
 ml9w==
X-Gm-Message-State: APjAAAUUOM+aBO3WBHYUSuDfqS8cVNg4oQo4wR/ZCnafxq0jSCC/Z1lZ
 Ih0azYizzgJUC6ASmPpulyE/6Ub+hc5U0Cu7eZpdvYp2
X-Google-Smtp-Source: APXvYqwZMpYzi4TMizYsl1GP3YS0zx5cpm+pxcJqJ9w7qtyUkqVU5FJq8qR5ZKRbnaC1+jKwMB1Bv7MRfvrtz5YeeAM=
X-Received: by 2002:ac2:5307:: with SMTP id c7mr20954817lfh.58.1557338843858; 
 Wed, 08 May 2019 11:07:23 -0700 (PDT)
MIME-Version: 1.0
References: <556BBE2D-2BA6-40A3-BFF5-F5FA2351DB06@k5so.com>
 <BL0PR12MB2340E831A1782ED0958D6DBAAF320@BL0PR12MB2340.namprd12.prod.outlook.com>
 <84C6BD1A-2901-4FFC-834C-55B481EB7045@k5so.com> <5CD30B61.8080700@gmail.com>
 <CAGVTi8UrRix7wt_BxCN8rNBvFGD8d4Uz8Td7hWHGpg+G_=quAw@mail.gmail.com>
 <5CD3121D.6040508@gmail.com> <EC7DA97C-5541-4037-AB6B-26AE1712B50D@k5so.com>
In-Reply-To: <EC7DA97C-5541-4037-AB6B-26AE1712B50D@k5so.com>
Date: Wed, 8 May 2019 11:07:11 -0700
Message-ID: <CAGVTi8UfMw4Ff2Sm=4ybBMv-GEnfYrfUWuEzrX36QCJFo7T7bA@mail.gmail.com>
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
Cc: USRP-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0817110936191870478=="
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

--===============0817110936191870478==
Content-Type: multipart/alternative; boundary="000000000000955f10058864340c"

--000000000000955f10058864340c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You might want to try this:
https://forums.xilinx.com/t5/Configuration/Is-it-possible-to-convert-bin-fi=
le-to-bit-file-or-mcs-file/td-p/870351
 but YMMV.

-Robin


On Wed, May 8, 2019 at 11:04 AM Joe Martin <k5so@k5so.com> wrote:

> Very good, Marcus.  I would greatly appreciate it.
>
> If we can get our hands on the =E2=80=9Cusrp_n210_r2_fpga.bit=E2=80=9D fr=
om anywhere we
> could load it and install an ancient UHD version that has the associated
> .bin files for rev2 and run with that setup to have at least a minimal
> amount of utility from the N210, albeit not all the niceties and
> functionality of a modern UHD version.
>
> Thanks Jason, Marcus, and Robin for the information.  Much appreciated.
> At least we know now what we need for this N210 and what to expect from i=
t
> in terms of performance if we ever find the .bit file too.
>
> Best regards to all,
>
> Joe
>
> On May 8, 2019, at 11:30 AM, Marcus D. Leech via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> On 05/08/2019 01:24 PM, Robin Coxe wrote:
>
> Hi Joe and Jason.  So, I took a walk down Memory Lane and discovered that
> the N210 was first released by Ettus Research in November 2010, which was
> about 6 months after we were acquired by National Instruments.
> It is a true statement that v2 of the hardware is quite geriatric and no
> longer supported in modern versions of UHD.   However, all hope is not lo=
st.
>
> There *is* support for N200/N210 in the oldest version of UHD that is
> still downloadable on files.ettus.com, UHD v.3.8.0.0.   The FPGA images
> are in this zip file:
>
> http://files.ettus.com/binaries/images/uhd-images_003.008.000-18-g6647f8c=
c.zip
>
> We unfortunately don't have a v2 in the office to confirm that it still
> works, but you might want to take a look.
>
> -Robin
>
> I'm going to go through some old disk drives on mine from "back in the
> day", and see if I have the r2 .bit files.
>
> That can't happen until the weekend, however...
>
>
>
>
>
> On Wed, May 8, 2019 at 10:02 AM Marcus D. Leech via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> On 05/08/2019 12:56 PM, Joe Martin via USRP-users wrote:
>>
>> Wow, okay; that=E2=80=99s disheartening.  Thanks much for the info, Jaso=
n.  Nope,
>> the Rev3 bit file doesn=E2=80=99t work; tried it.  I=E2=80=99ll see if t=
he support email
>> adr can be of use.
>>
>> Joe
>>
>> There was a hardware change, as I recall, between Rev2 and Rev3 involvin=
g
>> the inputs to the ADCs.
>>
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
>>
>>
>> _______________________________________________
>> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
>

--000000000000955f10058864340c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You might want to try this:=C2=A0

<a href=3D"https://forums.xilinx.com/t5/Configuration/Is-it-possible-to-con=
vert-bin-file-to-bit-file-or-mcs-file/td-p/870351">https://forums.xilinx.co=
m/t5/Configuration/Is-it-possible-to-convert-bin-file-to-bit-file-or-mcs-fi=
le/td-p/870351</a>=C2=A0 =C2=A0but YMMV.<div><br></div><div>-Robin</div><di=
v><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Wed, May 8, 2019 at 11:04 AM Joe Martin &lt;<a href=3D"mailt=
o:k5so@k5so.com">k5so@k5so.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div style=3D"overflow-wrap: break-word;">Ver=
y good, Marcus.=C2=A0 I would greatly appreciate it.<div><br></div><div>If =
we can get our hands on the =E2=80=9Cusrp_n210_r2_fpga.bit=E2=80=9D from an=
ywhere we could load it and install an ancient UHD version that has the ass=
ociated .bin files for rev2 and run with that setup to have at least a mini=
mal amount of utility from the N210, albeit not all the niceties and functi=
onality of a modern UHD version. =C2=A0<div><br></div><div>Thanks Jason, Ma=
rcus, and Robin for the information.=C2=A0 Much appreciated.=C2=A0 At least=
 we know now what we need for this N210 and what to expect from it in terms=
 of performance if we ever find the .bit file too. =C2=A0</div><div><br></d=
iv><div>Best regards to all,=C2=A0</div><div><br></div><div>Joe<br><div><br=
><blockquote type=3D"cite"><div>On May 8, 2019, at 11:30 AM, Marcus D. Leec=
h via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:</div><br class=3D"gma=
il-m_4409046354640671939Apple-interchange-newline"><div>
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div class=3D"gmail-m_4409046354640671939moz-cite-prefix">On 05/08/2019=
 01:24 PM, Robin Coxe
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div dir=3D"ltr">Hi Joe and Jason.=C2=A0 So, I took a walk down
            Memory Lane and discovered that the N210 was first released
            by Ettus Research in November 2010, which was about 6 months
            after we were acquired by National Instruments.
            <div>It is a true statement that v2 of the hardware is quite
              geriatric and no longer supported in modern versions of
              UHD.=C2=A0 =C2=A0However, all hope is not lost.</div>
            <div><br>
            </div>
            <div>There *is* support for N200/N210 in the oldest version
              of UHD that is still downloadable on <a href=3D"http://files.=
ettus.com/" target=3D"_blank">files.ettus.com</a>,
              UHD v.3.8.0.0.=C2=A0 =C2=A0The FPGA images are in this zip fi=
le:</div>
            <div><a href=3D"http://files.ettus.com/binaries/images/uhd-imag=
es_003.008.000-18-g6647f8cc.zip" target=3D"_blank">http://files.ettus.com/b=
inaries/images/uhd-images_003.008.000-18-g6647f8cc.zip</a><br>
            </div>
            <div><br>
            </div>
            <div>We unfortunately don&#39;t have a v2 in the office to
              confirm that it still works, but you might want to take a
              look.=C2=A0=C2=A0</div>
            <div><br>
            </div>
            <div>-Robin</div>
          </div>
        </div>
      </div>
    </blockquote>
    I&#39;m going to go through some old disk drives on mine from &quot;bac=
k in
    the day&quot;, and see if I have the r2 .bit files.<br>
    <br>
    That can&#39;t happen until the weekend, however...<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div dir=3D"ltr">
            <div><br>
            </div>
            <div><br>
            </div>
          </div>
        </div>
        <br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 8, 2019 at 10:0=
2
            AM Marcus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-us=
ers@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <div bgcolor=3D"#FFFFFF">
              <div class=3D"gmail-m_4409046354640671939gmail-m_-16398649667=
45732941moz-cite-prefix">On
                05/08/2019 12:56 PM, Joe Martin via USRP-users wrote:<br>
              </div>
              <blockquote type=3D"cite"> Wow, okay; that=E2=80=99s disheart=
ening.=C2=A0
                Thanks much for the info, Jason.=C2=A0 Nope, the Rev3 bit
                file doesn=E2=80=99t work; tried it.=C2=A0 I=E2=80=99ll see=
 if the support
                email adr can be of use. =C2=A0
                <div><br>
                </div>
                <div>Joe<br>
                  <div><br>
                  </div>
                </div>
              </blockquote>
              There was a hardware change, as I recall, between Rev2 and
              Rev3 involving the inputs to the ADCs.<br>
              <br>
              <br>
              <blockquote type=3D"cite">
                <div>
                  <div>
                    <blockquote type=3D"cite">
                      <div>On May 8, 2019, at 10:44 AM, Jason Matusiak
                        &lt;<a href=3D"mailto:jason@gardettoengineering.com=
" target=3D"_blank">jason@gardettoengineering.com</a>&gt;

                        wrote:</div>
                      <br class=3D"gmail-m_4409046354640671939gmail-m_-1639=
864966745732941Apple-interchange-newline">
                      <div>
                        <div style=3D"font-style:normal;font-variant-caps:n=
ormal;font-weight:normal;letter-spacing:normal;text-align:start;text-indent=
:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoratio=
n:none;font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt">Joe,
                          I think you might be SOL.=C2=A0 If you take a loo=
k
                          at this thread from me last year, I had no
                          luck:=C2=A0<a href=3D"http://lists.ettus.com/pipe=
rmail/usrp-users_lists.ettus.com/2018-April/056223.html" target=3D"_blank">=
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-April/0562=
23.html</a></div>
                        <div style=3D"font-style:normal;font-variant-caps:n=
ormal;font-weight:normal;letter-spacing:normal;text-align:start;text-indent=
:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoratio=
n:none;font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt"><br>
                        </div>
                        <div style=3D"font-style:normal;font-variant-caps:n=
ormal;font-weight:normal;letter-spacing:normal;text-align:start;text-indent=
:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoratio=
n:none;font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt"><br>
                        </div>
                        <div style=3D"font-style:normal;font-variant-caps:n=
ormal;font-weight:normal;letter-spacing:normal;text-align:start;text-indent=
:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoratio=
n:none;font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt">Also,

                          when I pinged Ettus directly, here is some
                          info I got back from them (from two different
                          emails in the thread):</div>
                        <div style=3D"font-style:normal;font-variant-caps:n=
ormal;font-weight:normal;letter-spacing:normal;text-align:start;text-indent=
:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoratio=
n:none;font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt">&quot=
;<span>we&#39;ve
                            been having some trouble tracking down Rev2
                            bitfiles, because no</span><br>
                          <span>one here was around when that was built.
                            If you&#39;re trying to unbrick</span><br>
                          <span>them, Rev3 bitfiles might be OK, but I&#39;=
m
                            not completely sure.</span></div>
                        <div style=3D"font-style:normal;font-variant-caps:n=
ormal;font-weight:normal;letter-spacing:normal;text-align:start;text-indent=
:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoratio=
n:none;font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt"><br>
                          <span><a href=3D"mailto:support@ettus.com" target=
=3D"_blank">support@ettus.com</a><span class=3D"gmail-m_4409046354640671939=
gmail-m_-1639864966745732941Apple-converted-space">=C2=A0</span>might
                            know more by know.</span></div>
                        <div style=3D"font-style:normal;font-variant-caps:n=
ormal;font-weight:normal;letter-spacing:normal;text-align:start;text-indent=
:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoratio=
n:none;font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt"><span=
>really
                            sorry, but those Rev2s are just so old. And
                            all the people from</span><br>
                          <span>that era seem to be gone. Sorry, can&#39;t
                            help you with those Rev2s.&quot;</span></div>
                        <div id=3D"gmail-m_4409046354640671939gmail-m_-1639=
864966745732941Signature" style=3D"font-family:Helvetica;font-size:12px;fon=
t-style:normal;font-variant-caps:normal;font-weight:normal;letter-spacing:n=
ormal;text-align:start;text-indent:0px;text-transform:none;white-space:norm=
al;word-spacing:0px;text-decoration:none">
                          <div>
                            <div style=3D"font-family:Calibri,Arial,Helveti=
ca,sans-serif;font-size:12pt"><br>
                            </div>
                            <hr style=3D"display:inline-block;width:1284.77=
px">
                            <div id=3D"gmail-m_4409046354640671939gmail-m_-=
1639864966745732941divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt=
" face=3D"Calibri, sans-serif"><b>From:</b><span class=3D"gmail-m_440904635=
4640671939gmail-m_-1639864966745732941Apple-converted-space">=C2=A0</span>U=
SRP-users

                                &lt;<a href=3D"mailto:usrp-users-bounces@li=
sts.ettus.com" target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt;

                                on behalf of Joe Martin via USRP-users
                                &lt;<a href=3D"mailto:usrp-users@lists.ettu=
s.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
                                <b>Sent:</b><span class=3D"gmail-m_44090463=
54640671939gmail-m_-1639864966745732941Apple-converted-space">=C2=A0</span>=
Wednesday,

                                May 8, 2019 11:55 AM<br>
                                <b>To:</b><span class=3D"gmail-m_4409046354=
640671939gmail-m_-1639864966745732941Apple-converted-space">=C2=A0</span>Jo=
e
                                Martin via USRP-users<br>
                                <b>Subject:</b><span class=3D"gmail-m_44090=
46354640671939gmail-m_-1639864966745732941Apple-converted-space">=C2=A0</sp=
an>[USRP-users]

                                Bringing an elderly N210 to life by
                                loading current firmware/fpga images</font>
                              <div>=C2=A0</div>
                            </div>
                            <div>I am
                              trying to bring an elderly N210 r2.0 with
                              unknown history to life by loading current
                              UHD firmware and fpga images from a
                              1Gigabit ethernet connection on an AMD
                              2950X, 3.4GHz, 2TB SSD PC running Ubuntu
                              18.04 with UHD 3.14.0.HEAD-0-gd20a7ae2
                              software but having difficulty.=C2=A0
                              <div><br>
                              </div>
                              <div>Following instructions in =E2=80=9CUSRP
                                Hardware Driver and USRP Manual: USRP2
                                and N2x0 Series=E2=80=9D:</div>
                              <div><br>
                              </div>
                              <div>My initial action was to load the
                                =E2=80=9Cusrp_n210_r4_fpga.bit&quot; file i=
nto the
                                N210 xc3sd3400a FPGA using a Xilinx
                                Platform Cable USB II JTAG programming
                                cable from a Win7 PC running Xilinx ISE
                                iMPACT, which reported =E2=80=9CProgram
                                Succeeded=E2=80=9D for the action.=C2=A0 Et=
hernet
                                LEDs on the N210 are variously lighted
                                showing activity on the connection port.</d=
iv>
                              <div><br>
                              </div>
                              <div>With the N210 connected to the Linux
                                PC 1Gbps ethernet port, issuing the
                                following commands result in the
                                responses shown in the screenshot image
                                below:=C2=A0</div>
                              <div><br>
                              </div>
                              <div><span id=3D"gmail-m_4409046354640671939g=
mail-m_-1639864966745732941cid:70A3E5A1-EF1B-4D99-B156-F8CD7369666A">&lt;Sc=
reenshot

                                  from 2019-05-08 08-46-52.png&gt;</span></=
div>
                              <div><br>
                              </div>
                              <div>
                                <div>My (naive!) interpretation of the
                                  above responses is that the FPGA may
                                  not actually have been programmed with
                                  the *.bit code even though iMPACT
                                  reported success in programming.=C2=A0 Ca=
n
                                  someone assist me in understanding
                                  whether my interpretation is correct
                                  or not and, most importantly, suggest
                                  what I might try next to bring this
                                  N210 to life? =C2=A0</div>
                                <div><br>
                                </div>
                                <div>The =E2=80=9CPlease run:=E2=80=9D sugg=
estion
                                  results in the =E2=80=9CReceived invalid =
reply
                                  32 from device=E2=80=9D error.=C2=A0 It s=
eems no
                                  matter what I try the =E2=80=9CReceived
                                  invalid reply 32 from device=E2=80=9D
                                  RuntimeError is reported back when I
                                  try to load any new firmware/FPGA
                                  images. =C2=A0</div>
                                <div><br>
                                </div>
                                <div>Thanks!</div>
                                <div><br>
                                </div>
                                <div>Joe</div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </blockquote>
                  </div>
                  <br>
                </div>
                <br>
                <fieldset class=3D"gmail-m_4409046354640671939gmail-m_-1639=
864966745732941mimeAttachmentHeader"></fieldset>
                <br>
                <pre>_______________________________________________
USRP-users mailing list
<a class=3D"gmail-m_4409046354640671939gmail-m_-1639864966745732941moz-txt-=
link-abbreviated" href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_bla=
nk">USRP-users@lists.ettus.com</a>
<a class=3D"gmail-m_4409046354640671939gmail-m_-1639864966745732941moz-txt-=
link-freetext" href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_l=
ists.ettus.com" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/u=
srp-users_lists.ettus.com</a>
</pre>
              </blockquote>
              <br>
            </div>
            _______________________________________________<br>
            USRP-users mailing list<br>
            <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank"=
>USRP-users@lists.ettus.com</a><br>
            <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_l=
ists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com=
/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
          </blockquote>
        </div>
      </div>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>USRP-users mailing list<=
br><a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-use=
rs@lists.ettus.com</a><br><a href=3D"http://lists.ettus.com/mailman/listinf=
o/usrp-users_lists.ettus.com" target=3D"_blank">http://lists.ettus.com/mail=
man/listinfo/usrp-users_lists.ettus.com</a><br></div></blockquote></div><br=
></div></div></div></blockquote></div>

--000000000000955f10058864340c--


--===============0817110936191870478==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0817110936191870478==--

