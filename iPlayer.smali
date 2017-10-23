.class public Lcom/example/tienmm/parsedata/iPlayer;
.super Ljava/lang/Object;
.source "iPlayer.java"


# static fields
.field public static arrArtist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fotoable/youtube/music/bean/ArtistBean;",
            ">;"
        }
    .end annotation
.end field

.field public static context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static testAdded()V
    .registers 8

    .prologue
    .line 22
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    sget-object v0, Lcom/example/tienmm/parsedata/iPlayer;->arrArtist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_86

    .line 23
    const-string v0, "test_data"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "i : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/example/tienmm/parsedata/iPlayer;->arrArtist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    sget-object v0, Lcom/example/tienmm/parsedata/iPlayer;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/example/tienmm/webservices/DataApiManager;->getInstance(Landroid/content/Context;)Lcom/example/tienmm/webservices/DataApiManager;

    move-result-object v0

    sget-object v1, Lcom/example/tienmm/parsedata/iPlayer;->arrArtist:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fotoable/youtube/music/bean/ArtistBean;

    invoke-virtual {v1}, Lcom/fotoable/youtube/music/bean/ArtistBean;->getArtistsid()I

    move-result v1

    sget-object v2, Lcom/example/tienmm/parsedata/iPlayer;->arrArtist:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fotoable/youtube/music/bean/ArtistBean;

    invoke-virtual {v2}, Lcom/fotoable/youtube/music/bean/ArtistBean;->getDesc()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/example/tienmm/parsedata/iPlayer;->arrArtist:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fotoable/youtube/music/bean/ArtistBean;

    invoke-virtual {v3}, Lcom/fotoable/youtube/music/bean/ArtistBean;->getGroup()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/example/tienmm/parsedata/iPlayer;->arrArtist:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fotoable/youtube/music/bean/ArtistBean;

    invoke-virtual {v4}, Lcom/fotoable/youtube/music/bean/ArtistBean;->getImgUrl()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/example/tienmm/parsedata/iPlayer;->arrArtist:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fotoable/youtube/music/bean/ArtistBean;

    invoke-virtual {v5}, Lcom/fotoable/youtube/music/bean/ArtistBean;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/example/tienmm/parsedata/iPlayer;->arrArtist:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fotoable/youtube/music/bean/ArtistBean;

    invoke-virtual {v6}, Lcom/fotoable/youtube/music/bean/ArtistBean;->isTop()Z

    move-result v6

    .line 24
    invoke-virtual/range {v0 .. v6}, Lcom/example/tienmm/webservices/DataApiManager;->requestUpAPI(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 22
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 36
    :cond_86
    return-void
.end method
