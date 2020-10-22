Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E199295605
	for <lists+usrp-users@lfdr.de>; Thu, 22 Oct 2020 03:21:46 +0200 (CEST)
Received: from [::1] (port=49932 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kVPIW-0008Jl-5x; Wed, 21 Oct 2020 21:21:44 -0400
Received: from mail-vs1-f43.google.com ([209.85.217.43]:43559)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1kVPIR-0008Cv-Oc
 for usrp-users@lists.ettus.com; Wed, 21 Oct 2020 21:21:39 -0400
Received: by mail-vs1-f43.google.com with SMTP id d19so2347681vso.10
 for <usrp-users@lists.ettus.com>; Wed, 21 Oct 2020 18:21:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=n2e6QRpws/zj3PUTOsvrgbh0bdVBmKTBFyTYHvsDG3U=;
 b=OUgQGJ37muYKX7DkuQ3dHlSbJgpyd1mt06vG9y5oCX/hNURqix0/NXL6QO+Wwu969m
 P7ajNZtIYkoE/sSnAjqU2eXghp+LY8SZiQUuQ4Jj9snDiH/9H8oywINujJnCzLaPuyKh
 nJ8EQipOrkDXfB8ZoS1JDUwWUnZOVeX5Zx8b9pHetQHFtJgQI7o72YHu3az8XUMVFoBA
 k7Y7u25SaxuepzY7eAJXT2GWuuIYWNTT35YEa06gOaYnxkyAbGnzqAGuZdDrPiiSX/YF
 pIhgSgsdkeD/9po4qipxuJa08/PMgrA93CZzDU2c0KEXqHVrrrQZ++lxgHnnJcH/sscX
 Hzvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=n2e6QRpws/zj3PUTOsvrgbh0bdVBmKTBFyTYHvsDG3U=;
 b=XIyHX1044mWlvUlKyX50363lquXwvt4i4p7kV7eOFjgkmpo8NJ3g4GOkoTeEWbH2Yq
 en3/twTvi5XQzQIpPpCSRseR7wN5RHCNl0jHsdf9rHzwnHYkriRjV5ewiFtrZCiFz5JV
 mV7g76P8wvhlfwtrUz0rsJFyfhRhWgqQO3TyTjToiGhF3OkNdxl1O3k4lsyoVFYQq1No
 R20Y1hnmgMo1MIsWCngKhGRVSdw9VuFW5/FSzO8G+QKFHN5fTFxMHZ+yH26+5QqIKfPs
 zMo1JT04HBnkSPJvGqX0MGkLzLZ/K5kKwIoD+Un3pajZevi1t63t2iYyOY295/DxBPdq
 3FMQ==
X-Gm-Message-State: AOAM53271yZkGYssz+x/KhcvIfgxxz74qdlLK7p6hQf6jsFhrU0swCv2
 bzHjFVsMj4PoEs7Xp6I56OBsCWz3VA7TOFDkarpX95mg
X-Google-Smtp-Source: ABdhPJxK+szN1RsOU1O2JY4oZ3JdvemjmPaT2eNNRrcM04RHPS15TiFv6hCKXMvz5/S83hQsnivyvC16lzWDCLfo9D8=
X-Received: by 2002:a67:73c1:: with SMTP id o184mr42774vsc.18.1603329659139;
 Wed, 21 Oct 2020 18:20:59 -0700 (PDT)
MIME-Version: 1.0
References: <AM0P193MB03086EE5B29894E691E338F3BD1C0@AM0P193MB0308.EURP193.PROD.OUTLOOK.COM>
In-Reply-To: <AM0P193MB03086EE5B29894E691E338F3BD1C0@AM0P193MB0308.EURP193.PROD.OUTLOOK.COM>
Date: Wed, 21 Oct 2020 21:20:23 -0400
Message-ID: <CAL7q81tD7dtNofe4yX63iuTk+rHO0=-egvMYsTkUuzUfHKnRWQ@mail.gmail.com>
To: "Puertas Blanco, Roberto" <rpblanco@indra.es>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Building an Image using the image builder script
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Content-Type: multipart/mixed; boundary="===============0918040332940017517=="
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

--===============0918040332940017517==
Content-Type: multipart/alternative; boundary="000000000000ca8fa705b23846b9"

--000000000000ca8fa705b23846b9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Roberto,

Do you get the same error if you try the v3.15.0.0 tag?

Jonathon

On Wed, Oct 21, 2020 at 12:13 PM Puertas Blanco, Roberto via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
>
>
>
> I=C2=B4m trying to build an image following the commands described in
> https://github.com/EttusResearch/meta-ettus.
>
>
>
> Executing the repo command:
>
>
>
> repo init -u git://github.com/EttusResearch/oe-manifests.git -b v3.14.1.1
>
>
>
> I get the following errors:
>
>
>
> Downloading Repo source from https://gerrit.googlesource.com/git-repo
>
> Downloading manifest from git://github.com/EttusResearch/oe-manifests.git
>
> fatal: Couldn't find remote ref refs/heads/v3.14.1.1
>
> manifests:
>
> fatal: Couldn't find remote ref refs/heads/v3.14.1.1
>
>
>
> Otherwise, if I execute the repo command:
>
>
>
> repo init -u git://github.com/EttusResearch/oe-manifests.git -b thud
>
>
>
> and:
>
>
>
> repo sync
>
>
>
> The repository seems to be downloaded and synced but I get the following =
errors after executing:
>
>
>
> ./meta-ettus/contrib/build_imgs_package.sh n3xx thud .
>
>
>
> Scripts seems to be executed but the process stops returning:
>
>
>
> Creating ./build/conf/auto.conf...
>
> meta-ettus/contrib/setup_build_env.sh: l=C3=ADnea 181: ./build/conf/auto.=
conf: No existe el fichero o el directorio
>
> You can now run 'bitbake <image>'
>
> where <image> is e.g. developer-image or gnuradio-image.
>
> Launching build (gnuradio-image)...
>
> Loading cache: 100% |####################################################=
##################################################################| Time: 0=
:00:00
>
> Loaded 1262 entries from dependency cache.
>
> ERROR: Nothing PROVIDES 'gnuradio-image'
>
>
>
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
> Build was not successful, stopping script
>
>
>
> Regards,
>
> Roberto
>
>
>
>
>
>
>
> ------------------------------
>
> Este correo electr=C3=B3nico y, en su caso, cualquier fichero anexo al mi=
smo,
> contiene informaci=C3=B3n de car=C3=A1cter confidencial exclusivamente di=
rigida a su
> destinatario o destinatarios. Si no es vd. el destinatario indicado, qued=
a
> notificado que la lectura, utilizaci=C3=B3n, divulgaci=C3=B3n y/o copia s=
in
> autorizaci=C3=B3n est=C3=A1 prohibida en virtud de la legislaci=C3=B3n vi=
gente. En el caso
> de haber recibido este correo electr=C3=B3nico por error, se ruega notifi=
car
> inmediatamente esta circunstancia mediante reenv=C3=ADo a la direcci=C3=
=B3n
> electr=C3=B3nica del remitente.
> Evite imprimir este mensaje si no es estrictamente necesario.
>
> This email and any file attached to it (when applicable) contain(s)
> confidential information that is exclusively addressed to its recipient(s=
).
> If you are not the indicated recipient, you are informed that reading,
> using, disseminating and/or copying it without authorisation is forbidden
> in accordance with the legislation in effect. If you have received this
> email by mistake, please immediately notify the sender of the situation b=
y
> resending it to their email address.
> Avoid printing this message if it is not absolutely necessary.
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000ca8fa705b23846b9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Roberto,<div><br></div><div>Do you get the same error i=
f you try the=C2=A0v3.15.0.0 tag?</div><div><br></div><div>Jonathon</div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Wed, Oct 21, 2020 at 12:13 PM Puertas Blanco, Roberto via USRP-users &lt;<=
a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"ES">
<div class=3D"gmail-m_-7150306007169344736WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hello, <u></u><u></u></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I=C2=B4m trying to build an ima=
ge following the commands described in
<a href=3D"https://github.com/EttusResearch/meta-ettus" target=3D"_blank">h=
ttps://github.com/EttusResearch/meta-ettus</a>.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<pre><span lang=3D"EN-US" style=3D"font-size:11pt;font-family:Calibri,sans-=
serif">Executing the repo command:<u></u><u></u></span></pre>
<pre><span lang=3D"EN-US" style=3D"font-size:11pt;font-family:Calibri,sans-=
serif"><u></u>=C2=A0<u></u></span></pre>
<pre><span lang=3D"EN-US" style=3D"font-family:Consolas;color:rgb(36,41,46)=
;border:1pt none windowtext;padding:0cm">repo init -u git://<a href=3D"http=
://github.com/EttusResearch/oe-manifests.git" target=3D"_blank">github.com/=
EttusResearch/oe-manifests.git</a> -b v3.14.1.1<u></u><u></u></span></pre>
<pre><span lang=3D"EN-US" style=3D"font-family:Consolas;color:rgb(36,41,46)=
;border:1pt none windowtext;padding:0cm"><u></u>=C2=A0<u></u></span></pre>
<pre><span lang=3D"EN-US" style=3D"font-size:11pt;font-family:Calibri,sans-=
serif">I get the following errors:<u></u><u></u></span></pre>
<pre><span lang=3D"EN-US" style=3D"font-size:11pt;font-family:Calibri,sans-=
serif"><u></u>=C2=A0<u></u></span></pre>
<pre><span lang=3D"EN-US" style=3D"font-size:11pt;font-family:Calibri,sans-=
serif">Downloading Repo source from <a href=3D"https://gerrit.googlesource.=
com/git-repo" target=3D"_blank">https://gerrit.googlesource.com/git-repo</a=
><u></u><u></u></span></pre>
<pre><span lang=3D"EN-US" style=3D"font-size:11pt;font-family:Calibri,sans-=
serif">Downloading manifest from git://<a href=3D"http://github.com/EttusRe=
search/oe-manifests.git" target=3D"_blank">github.com/EttusResearch/oe-mani=
fests.git</a><u></u><u></u></span></pre>
<pre><span lang=3D"EN-US" style=3D"font-size:11pt;font-family:Calibri,sans-=
serif">fatal: Couldn&#39;t find remote ref refs/heads/v3.14.1.1<u></u><u></=
u></span></pre>
<pre><span lang=3D"EN-US" style=3D"font-size:11pt;font-family:Calibri,sans-=
serif">manifests:<u></u><u></u></span></pre>
<pre><span lang=3D"EN-US" style=3D"font-size:11pt;font-family:Calibri,sans-=
serif">fatal: Couldn&#39;t find remote ref refs/heads/v3.14.1.1<u></u><u></=
u></span></pre>
<pre><span lang=3D"EN-US" style=3D"font-family:Consolas;color:rgb(36,41,46)=
;border:1pt none windowtext;padding:0cm"><u></u>=C2=A0<u></u></span></pre>
<pre><span lang=3D"EN-US" style=3D"font-size:11pt;font-family:Calibri,sans-=
serif">Otherwise, if I execute the repo command:<u></u><u></u></span></pre>
<pre><span lang=3D"EN-US" style=3D"font-family:Consolas;color:rgb(36,41,46)=
;border:1pt none windowtext;padding:0cm"><u></u>=C2=A0<u></u></span></pre>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:rgb(36,=
41,46);border:1pt none windowtext;padding:0cm">repo init -u git://<a href=
=3D"http://github.com/EttusResearch/oe-manifests.git" target=3D"_blank">git=
hub.com/EttusResearch/oe-manifests.git</a> -b thud<u></u><u></u></span></co=
de></pre>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:rgb(36,=
41,46);border:1pt none windowtext;padding:0cm"><u></u>=C2=A0<u></u></span><=
/code></pre>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:rgb(36,=
41,46);border:1pt none windowtext;padding:0cm">and:<u></u><u></u></span></c=
ode></pre>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:rgb(36,=
41,46);border:1pt none windowtext;padding:0cm"><u></u>=C2=A0<u></u></span><=
/code></pre>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:rgb(36,=
41,46);border:1pt none windowtext;padding:0cm">repo sync<u></u><u></u></spa=
n></code></pre>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:rgb(36,=
41,46);border:1pt none windowtext;padding:0cm"><u></u>=C2=A0<u></u></span><=
/code></pre>
<pre><span style=3D"font-size:11pt;font-family:Calibri,sans-serif">The repo=
sitory seems to be downloaded and synced but I get the following errors aft=
er executing:<u></u><u></u></span></pre>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:rgb(36,=
41,46);border:1pt none windowtext;padding:0cm"><u></u>=C2=A0<u></u></span><=
/code></pre>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:rgb(36,=
41,46);border:1pt none windowtext;padding:0cm">./meta-ettus/contrib/build_i=
mgs_package.sh n3xx thud .<u></u><u></u></span></code></pre>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:rgb(36,=
41,46);border:1pt none windowtext;padding:0cm"><u></u>=C2=A0<u></u></span><=
/code></pre>
<pre><span style=3D"font-size:11pt;font-family:Calibri,sans-serif">Scripts =
seems to be executed but the process stops returning:<u></u><u></u></span><=
/pre>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:rgb(36,=
41,46);border:1pt none windowtext;padding:0cm"><u></u>=C2=A0<u></u></span><=
/code></pre>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:rgb(36,=
41,46);border:1pt none windowtext;padding:0cm">Creating ./build/conf/auto.c=
onf...<u></u><u></u></span></code></pre>
<pre><code><span style=3D"font-family:Consolas;color:rgb(36,41,46);border:1=
pt none windowtext;padding:0cm">meta-ettus/contrib/setup_build_env.sh: l=C3=
=ADnea 181: ./build/conf/auto.conf: No existe el fichero o el directorio<u>=
</u><u></u></span></code></pre>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:rgb(36,=
41,46);border:1pt none windowtext;padding:0cm">You can now run &#39;bitbake=
 &lt;image&gt;&#39;<u></u><u></u></span></code></pre>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:rgb(36,=
41,46);border:1pt none windowtext;padding:0cm">where &lt;image&gt; is e.g. =
developer-image or gnuradio-image.<u></u><u></u></span></code></pre>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:rgb(36,=
41,46);border:1pt none windowtext;padding:0cm">Launching build (gnuradio-im=
age)...<u></u><u></u></span></code></pre>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:rgb(36,=
41,46);border:1pt none windowtext;padding:0cm">Loading cache: 100% |#######=
###########################################################################=
####################################| Time: 0:00:00<u></u><u></u></span></c=
ode></pre>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:rgb(36,=
41,46);border:1pt none windowtext;padding:0cm">Loaded 1262 entries from dep=
endency cache.<u></u><u></u></span></code></pre>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:red;bor=
der:1pt none windowtext;padding:0cm">ERROR: Nothing PROVIDES &#39;gnuradio-=
image&#39;<u></u><u></u></span></code></pre>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:rgb(36,=
41,46);border:1pt none windowtext;padding:0cm"><u></u>=C2=A0<u></u></span><=
/code></pre>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:rgb(36,=
41,46);border:1pt none windowtext;padding:0cm">Summary: There was 1 ERROR m=
essage shown, returning a non-zero exit code.<u></u><u></u></span></code></=
pre>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:rgb(36,=
41,46);border:1pt none windowtext;padding:0cm">Build was not successful, st=
opping script<u></u><u></u></span></code></pre>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:rgb(36,=
41,46);border:1pt none windowtext;padding:0cm"><u></u>=C2=A0<u></u></span><=
/code></pre>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:rgb(36,=
41,46);border:1pt none windowtext;padding:0cm">Regards, <u></u><u></u></spa=
n></code></pre>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:rgb(36,=
41,46);border:1pt none windowtext;padding:0cm">Roberto<u></u><u></u></span>=
</code></pre>
<pre><span lang=3D"EN-US" style=3D"font-family:Consolas;color:rgb(36,41,46)=
"><u></u>=C2=A0<u></u></span></pre>
<pre><span lang=3D"EN-US" style=3D"font-family:Consolas;color:rgb(36,41,46)=
"><u></u>=C2=A0<u></u></span></pre>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Gray" size=3D"1"><br>
Este correo electr=C3=B3nico y, en su caso, cualquier fichero anexo al mism=
o, contiene informaci=C3=B3n de car=C3=A1cter confidencial exclusivamente d=
irigida a su destinatario o destinatarios. Si no es vd. el destinatario ind=
icado, queda notificado que la lectura, utilizaci=C3=B3n,
 divulgaci=C3=B3n y/o copia sin autorizaci=C3=B3n est=C3=A1 prohibida en vi=
rtud de la legislaci=C3=B3n vigente. En el caso de haber recibido este corr=
eo electr=C3=B3nico por error, se ruega notificar inmediatamente esta circu=
nstancia mediante reenv=C3=ADo a la direcci=C3=B3n electr=C3=B3nica del
 remitente.<br>
Evite imprimir este mensaje si no es estrictamente necesario.<br>
<br>
This email and any file attached to it (when applicable) contain(s) confide=
ntial information that is exclusively addressed to its recipient(s). If you=
 are not the indicated recipient, you are informed that reading, using, dis=
seminating and/or copying it without
 authorisation is forbidden in accordance with the legislation in effect. I=
f you have received this email by mistake, please immediately notify the se=
nder of the situation by resending it to their email address.<br>
Avoid printing this message if it is not absolutely necessary.<br>
</font>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000ca8fa705b23846b9--


--===============0918040332940017517==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0918040332940017517==--

