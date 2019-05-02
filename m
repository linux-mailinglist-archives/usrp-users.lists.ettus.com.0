Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F00AA110DA
	for <lists+usrp-users@lfdr.de>; Thu,  2 May 2019 03:23:10 +0200 (CEST)
Received: from [::1] (port=40972 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hM0RH-0001k0-Mo; Wed, 01 May 2019 21:23:07 -0400
Received: from web-atmail1.tpgi.com.au ([203.12.160.53]:46360)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.91) (envelope-from <gobbo@tpg.com.au>) id 1hM0Qi-0001OR-04
 for usrp-users@lists.ettus.com; Wed, 01 May 2019 21:23:02 -0400
Received: from localhost (localhost [127.0.0.1])
 by web-atmail1.tpgi.com.au (8.14.4/8.14.4) with ESMTP id x421Lnww029251
 for <usrp-users@lists.ettus.com>; Thu, 2 May 2019 11:21:49 +1000
Message-Id: <6fa189949d2b1453a3de4b15c25fc0b0a694151e@new-postoffice.tpg.com.au>
To: "Ettus Mail List" <usrp-users@lists.ettus.com>
X-Mailer: Atmail 7.2.0.14467
X-Originating-IP: 138.44.192.14
in-reply-to: <BL0PR12MB2340989655F5C62AE0F27E0DAF3B0@BL0PR12MB2340.namprd12.prod.outlook.com>
Date: Thu, 02 May 2019 11:21:49 +1000
MIME-Version: 1.0
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] E320 numpy missing?
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
From: Chris Gobbett via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Chris Gobbett <gobbo@tpg.com.au>
Content-Type: multipart/mixed; boundary="===============5103623578284749566=="
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

--===============5103623578284749566==
Content-Type: multipart/alternative;
 boundary="=_1bebca7e9536ffa7a665320433ce04d2"

--=_1bebca7e9536ffa7a665320433ce04d2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I've had similar problems since this post in March, and still waiting=0A=
on a 'clean' way=0Aforwardhttp://lists.ettus.com/pipermail/usrp-users_li=
sts.ettus.com/2019-March/059332.html=0AIn the interim I've done lots of=
 cross-compiling and also stealing=0Alibraries/binaries from working E31=
0 images; many of the included=0Abinaries seem gimped or a step down fro=
m what was on the E310.=0A=0A----- Original Message -----=0AFrom: "Jason=
 Matusiak" =0ATo:"Philip Balister" , "Ettus Mail List" =0ACc:=0ASent:Wed=
, 1 May 2019 14:40:16 +0000=0ASubject:Re: [USRP-users] E320 numpy missin=
g?=0A=0A I just double-checked and ENABLE_PYTHON is on in my system (whi=
ch was=0Aapparently the default since I didn't spell it out in my cmake=
=0Acommand).     =0A=0A-------------------------=0AFROM: Jason Matusiak=
=0ASENT: Wednesday, May 1, 2019 10:36 AM=0ATO: Philip Balister; Ettus Ma=
il List=0ASUBJECT: Re: [USRP-users] E320 numpy missing? =C2=A0    I actu=
ally was=0Ausing a .sh file from earlier in April, but pulling down the=
 most=0Arecent:=C2=A0e3xx_e320_sdk_default-v3.13.0.2-20190415.zip, I sti=
ll don't=0Asee pretty much any site-packages in the sysroot.  =0A  Those=
 things seem to be there automatically when using the .sh info=0Awith th=
e e310 files.  =0A  I will try including python in the cmake path (which=
 I've never=0Aneeded to do before), but is that going to be enough?=C2=
=A0 I feel like=0Athe back-and-forth you and I had last year with the ro=
cko build for=0Athe E310 were for pretty similar issues.=C2=A0 But hones=
tly, I need to=0Alook back at the emails for the exact issues at the tim=
e.     =0A=0A-------------------------=0AFROM: Philip Balister =0ASENT:=
 Wednesday, May 1, 2019 10:31 AM=0ATO: Jason Matusiak; Ettus Mail List=
=0ASUBJECT: Re: [USRP-users] E320 numpy missing? =C2=A0   On 05/01/2019=
 09:55=0AAM, Jason Matusiak via USRP-users wrote:=0A > I also get a "Imp=
ortError: No module named sip" when I try to run:=0Auhd_siggen_gui=0A >=
 =0A > So I think a few things might be missing from the cross-compile=
=0Asetup.=0A=0A I took a few minutes and looked at the current state of=
 the BSP. It=0A looks like you might have this image:=0A=0Ahttps://githu=
b.com/EttusResearch/meta-ettus/blob/master/meta-ettus-core/recipes-core/=
images/developer-image.bb=0A[1]=0A=0A I forget where numpy is the gnurad=
io dependency tree, but I'm going=0Ato=0A guess if you enable python sup=
port in gnuradio (yes it might be=0Apossible=0A to use gnuradio without=
 python) you will need numpy to build/run.=0A=0A Philip=0A=0A > =0A > __=
______________________________=0A > From: Jason Matusiak=0A > Sent: Wedn=
esday, May 1, 2019 8:46 AM=0A > To: Ettus Mail List=0A > Subject: E320 n=
umpy missing?=0A > =0A > Finally got my E320 in and I cross-compiled a n=
ew setup.=C2=A0 I tried=0Ato fire up my flowgraph (which works fine on a=
n E310) and it is=0Acomplaining about numpy missing.=0A > =0A > If I do=
 a search from / on the E320, the only numpy that is showing=0Aup is:=0A=
 > /usr/include/boost/python/numpy=0A > =0A > If I do a search from a go=
od E310 in / I see:=0A > ./usr/lib/python2.7/site-packages/numpy=0A > ./=
usr/lib/python2.7/site-packages/numpy/core/include/numpy=0A > ./usr/lib/=
python2.7/site-packages/Cython/Includes/numpy=0A > ./usr/include/boost/p=
ython/numpy=0A > =0A > =0A > Back on the host machine, my E320 cross-com=
pile prefix shows numpy:=0A >=0A./sysroots/cortexa9hf-neon-oe-linux-gnue=
abi/usr/include/boost/python/numpy=0A > =0A > My good E310 prefix shows:=
=0A >=0A./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/src/debug/python-n=
umpy/1.13.1-r0/numpy-1.13.1/build/src.linux-x86_64-2.7/numpy=0A >=0A./sy=
sroots/armv7ahf-neon-oe-linux-gnueabi/usr/src/debug/python-numpy/1.13.1-=
r0/numpy-1.13.1/build/src.linux-x86_64-2.7/numpy/core/include/numpy=0A >=
=0A./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/src/debug/python-numpy/=
1.13.1-r0/numpy-1.13.1/numpy=0A >=0A./sysroots/armv7ahf-neon-oe-linux-gn=
ueabi/usr/src/debug/python-numpy/1.13.1-r0/numpy-1.13.1/numpy/core/inclu=
de/numpy=0A >=0A./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/lib/python=
2.7/site-packages/Cython/Includes/numpy=0A >=0A./sysroots/armv7ahf-neon-=
oe-linux-gnueabi/usr/lib/python2.7/site-packages/numpy=0A >=0A./sysroots=
/armv7ahf-neon-oe-linux-gnueabi/usr/lib/python2.7/site-packages/numpy/co=
re/include/numpy=0A >=0A./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/in=
clude/boost/python/numpy=0A > =0A > So, was numpy forgotten?=C2=A0 Left=
 out for a reason?=C2=A0 I am going to=0Aattempt to build it by hand, bu=
t I have a fear that I am going to go=0Adown dependency hell with this a=
nd other missing packages that GR=0Amight want.=0A > =0A > =0A > =0A >=
 =0A > _______________________________________________=0A > USRP-users m=
ailing list=0A > USRP-users@lists.ettus.com=0A > http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com=0A[2]=0A > =0A       =0A=0AL=
inks:=0A------=0A[1]=0Ahttps://github.com/EttusResearch/meta-ettus/blob/=
master/meta-ettus-core/recipes-core/images/developer-image.bb=0A[2] http=
://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=0A

--=_1bebca7e9536ffa7a665320433ce04d2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body style=3D"font-family: 'Helvetica Neue',Helvetica,Arial,sans-=
serif; font-size: 12px;">I've had similar problems since this post in Ma=
rch, and still waiting on a 'clean' way forward<div>http://lists.ettus.c=
om/pipermail/usrp-users_lists.ettus.com/2019-March/059332.html</div><div=
><br /></div><div>In the interim I've done lots of cross-compiling and a=
lso stealing libraries/binaries from working E310 images; many of the in=
cluded binaries seem gimped or a step down from what was on the E310.<br=
 /></div><div><br /></div><blockquote>----- Original Message -----<br />=
<div style=3D"width:100%;background:rgb(228,228,228);"><div style=3D"fon=
t-weight:bold;">From:</div> "Jason Matusiak" &lt;jason@gardettoengineeri=
ng.com&gt;</div><br /><div style=3D"font-weight:bold;">To:</div>"Philip=
 Balister" &lt;philip@balister.org&gt;, "Ettus Mail List" &lt;usrp-users=
@lists.ettus.com&gt;<br /><div style=3D"font-weight:bold;">Cc:</div><br=
 /><div style=3D"font-weight:bold;">Sent:</div>Wed, 1 May 2019 14:40:16=
 +0000<br /><div style=3D"font-weight:bold;">Subject:</div>Re: [USRP-use=
rs] E320 numpy missing?<br /><br /><br /><div style=3D"font-family:Calib=
ri, Arial, Helvetica, sans-serif;font-size:12pt;color:rgb(0,0,0);">=0AI=
 just double-checked and ENABLE_PYTHON is on in my system (which was app=
arently the default since I didn't spell it out in my cmake command).</d=
iv>=0A<div>=0A<div>=0A<div></div>=0A<div style=3D"font-family:Calibri, A=
rial, Helvetica, sans-serif;font-size:12pt;color:rgb(0,0,0);">=0A<br /><=
/div>=0A<hr style=3D"width:98%;" /><div dir=3D"ltr"><font style=3D"font-=
size:11pt;" face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b>=
 Jason Matusiak<br /><b>Sent:</b> Wednesday, May 1, 2019 10:36 AM<br /><=
b>To:</b> Philip Balister; Ettus Mail List<br /><b>Subject:</b> Re: [USR=
P-users] E320 numpy missing?</font>=0A<div>=C2=A0</div>=0A</div>=0A<div=
 dir=3D"ltr">=0A<div style=3D"font-family:Calibri, Arial, Helvetica, san=
s-serif;font-size:12pt;color:rgb(0,0,0);">=0AI actually was using a .sh=
 file from earlier in April, but pulling down the most recent:=C2=A0e3xx=
_e320_sdk_default-v3.13.0.2-20190415.zip, I still don't see pretty much=
 any site-packages in the sysroot.</div>=0A<div style=3D"font-family:Cal=
ibri, Arial, Helvetica, sans-serif;font-size:12pt;color:rgb(0,0,0);">=0A=
<br /></div>=0A<div style=3D"font-family:Calibri, Arial, Helvetica, sans=
-serif;font-size:12pt;color:rgb(0,0,0);">=0AThose things seem to be ther=
e automatically when using the .sh info with the e310 files.</div>=0A<di=
v style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">=0A<br /></div>=0A<div style=3D"font-family:Calib=
ri, Arial, Helvetica, sans-serif;font-size:12pt;color:rgb(0,0,0);">=0AI=
 will try including python in the cmake path (which I've never needed to=
 do before), but is that going to be enough?=C2=A0 I feel like the back-=
and-forth you and I had last year with the rocko build for the E310 were=
 for pretty similar issues.=C2=A0 But honestly, I=0A need to look back a=
t the emails for the exact issues at the time.</div>=0A<div>=0A<div>=0A<=
div></div>=0A<div style=3D"font-family:Calibri, Arial, Helvetica, sans-s=
erif;font-size:12pt;color:rgb(0,0,0);">=0A<br /></div>=0A<hr style=3D"wi=
dth:98%;" /><div dir=3D"ltr"><font style=3D"font-size:11pt;" face=3D"Cal=
ibri, sans-serif" color=3D"#000000"><b>From:</b> Philip Balister &lt;phi=
lip@balister.org&gt;<br /><b>Sent:</b> Wednesday, May 1, 2019 10:31 AM<b=
r /><b>To:</b> Jason Matusiak; Ettus Mail List<br /><b>Subject:</b> Re:=
 [USRP-users] E320 numpy missing?</font>=0A<div>=C2=A0</div>=0A</div>=0A=
<div class=3D"x_BodyFragment"><font size=3D"2"><span style=3D"font-size:=
11pt;">=0A</span></font><div class=3D"x_PlainText">On 05/01/2019 09:55 A=
M, Jason Matusiak via USRP-users wrote:<br />=0A&gt; I also get a "Impor=
tError: No module named sip" when I try to run: uhd_siggen_gui<br />=0A&=
gt; <br />=0A&gt; So I think a few things might be missing from the cros=
s-compile setup.<br /><br />=0AI took a few minutes and looked at the cu=
rrent state of the BSP. It<br />=0Alooks like you might have this image:=
<br /><br /><a href=3D"https://github.com/EttusResearch/meta-ettus/blob/=
master/meta-ettus-core/recipes-core/images/developer-image.bb">https://g=
ithub.com/EttusResearch/meta-ettus/blob/master/meta-ettus-core/recipes-c=
ore/images/developer-image.bb</a><br /><br />=0AI forget where numpy is=
 the gnuradio dependency tree, but I'm going to<br />=0Aguess if you ena=
ble python support in gnuradio (yes it might be possible<br />=0Ato use=
 gnuradio without python) you will need numpy to build/run.<br /><br />=
=0APhilip<br /><br />=0A&gt; <br />=0A&gt; _____________________________=
___<br />=0A&gt; From: Jason Matusiak<br />=0A&gt; Sent: Wednesday, May=
 1, 2019 8:46 AM<br />=0A&gt; To: Ettus Mail List<br />=0A&gt; Subject:=
 E320 numpy missing?<br />=0A&gt; <br />=0A&gt; Finally got my E320 in a=
nd I cross-compiled a new setup.=C2=A0 I tried to fire up my flowgraph (=
which works fine on an E310) and it is complaining about numpy missing.<=
br />=0A&gt; <br />=0A&gt; If I do a search from / on the E320, the only=
 numpy that is showing up is:<br />=0A&gt; /usr/include/boost/python/num=
py<br />=0A&gt; <br />=0A&gt; If I do a search from a good E310 in / I s=
ee:<br />=0A&gt; ./usr/lib/python2.7/site-packages/numpy<br />=0A&gt; ./=
usr/lib/python2.7/site-packages/numpy/core/include/numpy<br />=0A&gt; ./=
usr/lib/python2.7/site-packages/Cython/Includes/numpy<br />=0A&gt; ./usr=
/include/boost/python/numpy<br />=0A&gt; <br />=0A&gt; <br />=0A&gt; Bac=
k on the host machine, my E320 cross-compile prefix shows numpy:<br />=
=0A&gt; ./sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/include/boost/py=
thon/numpy<br />=0A&gt; <br />=0A&gt; My good E310 prefix shows:<br />=
=0A&gt; ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/src/debug/python-n=
umpy/1.13.1-r0/numpy-1.13.1/build/src.linux-x86_64-2.7/numpy<br />=0A&gt=
; ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/src/debug/python-numpy/1=
.13.1-r0/numpy-1.13.1/build/src.linux-x86_64-2.7/numpy/core/include/nump=
y<br />=0A&gt; ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/src/debug/p=
ython-numpy/1.13.1-r0/numpy-1.13.1/numpy<br />=0A&gt; ./sysroots/armv7ah=
f-neon-oe-linux-gnueabi/usr/src/debug/python-numpy/1.13.1-r0/numpy-1.13.=
1/numpy/core/include/numpy<br />=0A&gt; ./sysroots/armv7ahf-neon-oe-linu=
x-gnueabi/usr/lib/python2.7/site-packages/Cython/Includes/numpy<br />=0A=
&gt; ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/lib/python2.7/site-pa=
ckages/numpy<br />=0A&gt; ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/=
lib/python2.7/site-packages/numpy/core/include/numpy<br />=0A&gt; ./sysr=
oots/armv7ahf-neon-oe-linux-gnueabi/usr/include/boost/python/numpy<br />=
=0A&gt; <br />=0A&gt; So, was numpy forgotten?=C2=A0 Left out for a reas=
on?=C2=A0 I am going to attempt to build it by hand, but I have a fear t=
hat I am going to go down dependency hell with this and other missing pa=
ckages that GR might want.<br />=0A&gt; <br />=0A&gt; <br />=0A&gt; <br=
 />=0A&gt; <br />=0A&gt; _______________________________________________=
<br />=0A&gt; USRP-users mailing list<br />=0A&gt; USRP-users@lists.ettu=
s.com<br />=0A&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/us=
rp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-u=
sers_lists.ettus.com</a><br />=0A&gt; <br /></div>=0A</div>=0A</div>=0A<=
/div>=0A</div>=0A</div>=0A</div>=0A</blockquote></body></html>

--=_1bebca7e9536ffa7a665320433ce04d2--



--===============5103623578284749566==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5103623578284749566==--


